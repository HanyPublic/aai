using Aksaty.Application.Interfaces;
using Aksaty.Application.ViewModels;
using Aksaty.Domain.Attachments.Interfaces;
using Aksaty.Infra.CrossCutting.Util;
using Aksaty.Domain.Attachments.Models;
using Aksaty.Services.Api.Controllers;
using ImageMagick;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Threading.Tasks;

namespace Aksaty.Api.Controllers
{
    [Authorize]
    [Route("attachments-management")]
    public class AttachmentController : ApiController
    {
        private readonly IAttachmentAppService _attachmentAppService;
        private readonly IWebHostEnvironment _hostingEnv;
        public AttachmentController(IAttachmentAppService attachmentAppService, IWebHostEnvironment hostingEnvironment)
        {
            _attachmentAppService = attachmentAppService;
            _hostingEnv = hostingEnvironment;
        }
        /// <summary>
        /// Recives uploaded files and stores them as attachments
        /// </summary>
        /// <returns>List<Attachments></returns>
        [DisableRequestSizeLimit]
        [Consumes("multipart/form-data")]
        [HttpPost]
        public async Task<IActionResult> Upload([FromForm] IFormFile[] files)
        {
            if (ModelState.IsValid)
            {
                List<AttachmentCreateViewModel> attachments = new List<AttachmentCreateViewModel>();
                foreach (var file in files)
                {
                    var attachmentCVM = await SaveFile(file);
                    attachmentCVM.Id = Guid.NewGuid();
                    attachmentCVM.CreatedAt = DateTime.Now;
                    attachmentCVM.CreatedById = this.UserId;
                    attachmentCVM.TanentId = this.TanentId;
                    await _attachmentAppService.Add(attachmentCVM);
                    attachmentCVM.Url = Aksaty.Application.Helpers.MediaHelper.CreateMediaURL(attachmentCVM);
                    attachments.Add(attachmentCVM);
                }
                var validationResult = await _attachmentAppService.SaveAll();
                if (validationResult.IsValid)
                {
                    return CustomResponse(attachments);
                }
                else
                {
                    return CustomResponse(validationResult);
                }
            }
            else
            {
                return new UnprocessableEntityObjectResult(ModelState);
            }
        }
        /// <summary>
        /// Returns all attachments
        /// </summary>
        /// <returns>IEnumarble<AttachmentViewModel></returns>
        [HttpGet]
        public async Task<IActionResult> GetAttachments([FromQuery] GetAllAttachmentsViewModel getAllViewModel)
        {
            getAllViewModel.CreatedById = string.IsNullOrEmpty(getAllViewModel.CreatedById) ? this.UserId : getAllViewModel.CreatedById;
            getAllViewModel.TanentId = string.IsNullOrEmpty(getAllViewModel.TanentId) ? this.TanentId : getAllViewModel.TanentId;
            var pagedList = await _attachmentAppService.GetAll(getAllViewModel);
            Response.Headers.AddPagination(pagedList.GetMetaData());
            return CustomResponse(pagedList.Items);
        }
        /// <summary>
        /// Returns attachment by Id
        /// </summary>
        /// <param name="Id"></param>
        /// <returns>return AttachmentViewModel</returns>
        [HttpGet("{Id:guid}")]
        public async Task<IActionResult> GetAttachment(Guid Id)
        {
            return CustomResponse(await _attachmentAppService.GetById(Id));
        }
        /// <summary>
        /// Removes Or Restores an Attachment by Id
        /// </summary>
        /// <param name="Id"></param>
        /// <param name="Deleted"></param>
        /// <returns></returns>
        [HttpDelete("DeleteRestore/{Id:guid}")]
        public async Task<IActionResult> RemoveRestoreAttachment(Guid Id, bool Delete)
        {
            var result = await _attachmentAppService.Remove(Id,Delete);
            if (result.IsValid)
            {
                return CustomResponse($"Attachment with id {Id} was {(Delete ? "deleted" : "restored")}");
            }
            else
            {
                return CustomResponse(result);
            }
        }
        /// <summary>
        /// Removes Or Restores list of Attachments by Ids
        /// </summary>
        /// <param name="Id"></param>
        /// <param name="Deleted"></param>
        /// <returns></returns>
        [HttpPost("deleteList/{delete:bool}")]
        public async Task<IActionResult> RemoveRestoreListAttachment(List<AttachmentViewModel> viewModels,bool delete)
        {
            var result = await _attachmentAppService.RemoveList(viewModels,delete);
            if (result.IsValid)
            {
                return CustomResponse($"Attachments with Ids {(delete?$"{String.Join(",", viewModels.Select(a => a.Id))} were deleted.": $"{String.Join(",", viewModels.Select(a => a.Id))} were restored.")}");
            }
            else
            {
                return CustomResponse(result);
            }
        }
        /// <summary>
        /// Takes image and resizes it
        /// </summary>
        /// <param name="ImageDto"></param>
        /// <returns>resized Image</returns>
        [AllowAnonymous]
        [HttpPost("ImageResize")]
        [Consumes("multipart/form-data")]
        public IActionResult GetResizePicture([FromForm] ImageResizeViewModel ImageDto)
        {
            try
            {
                if (ModelState.IsValid)
                {
                    MagickImage image = new MagickImage(ImageDto.Image.OpenReadStream());

                    image.Resize(ImageDto.Width, ImageDto.Height);
                    image.Strip();
                    image.Quality = ImageDto.Quality;
                    return File(image.ToByteArray(), "image/png", ImageDto.Image.Name);
                }
                else
                {
                    return BadRequest("parameters are incorrect");
                }
            }
            catch (Exception ex)
            {
                return BadRequest("failed" + ex);
            }
        }
        /// <summary>
        /// Downloads an attachment
        /// </summary>
        /// <param name="id"></param>
        /// <returns>File</returns>
        [HttpGet("Download/{id:guid}")]
        public async Task<IActionResult> Download(Guid id)
        {
            var attachmentVM = await _attachmentAppService.GetById(id);
            if (attachmentVM != null)
            {
                var stream = new FileStream(attachmentVM.GetAttachmentAbsolutePath(rootPath:_hostingEnv.WebRootPath,tanentId:this.TanentId,userId:this.UserId), FileMode.Open, FileAccess.Read, FileShare.Read);
                return new FileStreamResult(stream, AttachmentContentTypes.GetContentType(attachmentVM.FileExtension));
            }
            else
            {
                return NotFound();
            }
        }
        /// <summary>
        /// Take Form file and creates a file from it
        /// </summary>
        /// <param name="file">returns attachmentViewModel</param>
        /// <returns></returns>
        private async Task<AttachmentCreateViewModel> SaveFile(IFormFile file)
        {
            AttachmentCreateViewModel attachmentViewModel = new AttachmentCreateViewModel()
            {
                FileExtension = Path.GetExtension(file.FileName),
                SourceFileName = Path.GetFileName(file.FileName),
                FileName = $"{Path.GetFileNameWithoutExtension(file.FileName).Replace(" ", "_")}_{Guid.NewGuid()}_{DateTime.Now.ToString("yyyyMMDDHHmmss")}",
                Description = file.Length.ToString(),
                CreatedById = this.UserId,
                TanentId = this.TanentId,
                ShowOnWebsite =true,
                Deleted = false
            };
            string filePath = attachmentViewModel.GetAttachmentAbsolutePath(rootPath: _hostingEnv.WebRootPath, tanentId: this.TanentId, userId: this.UserId);
            using (var stream = new FileStream(filePath, FileMode.Create))
            {
                await file.CopyToAsync(stream);
                await stream.FlushAsync();
            }
            return attachmentViewModel;
        }
    }
}
