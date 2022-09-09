using Aksaty.Application;
using Aksaty.Infra.Util;
using Aksaty.Application.Interfaces;
using Aksaty.Application.ViewModels;
using Aksaty.Infra.CrossCutting.Util;
using Aksaty.Services.Api.Controllers;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Threading.Tasks;

namespace Aksaty.Api.Controllers
{
    [Authorize]
    [Route("saleInstallment-management")]
    public class SaleInstallmentController : ApiController
    {
        private readonly ISaleInstallmentAppService _service;
        public SaleInstallmentController(ISaleInstallmentAppService saleInstallmentAppService)
        {
            _service = saleInstallmentAppService;
        }
        [HttpGet]
        public async Task<IActionResult> Get([FromQuery] GetAllSaleInstallmentViewModel getAllSaleInstallmentViewModel)
        {
            if (string.IsNullOrEmpty(getAllSaleInstallmentViewModel.CreatedById)) getAllSaleInstallmentViewModel.CreatedById = this.UserId;
            if (string.IsNullOrEmpty(getAllSaleInstallmentViewModel.TanentId)) getAllSaleInstallmentViewModel.TanentId = this.TanentId;
            var pagedList = await _service.GetAll(getAllSaleInstallmentViewModel);
            Response.Headers.AddPagination(pagedList.GetMetaData());
            return CustomResponse(pagedList.Items);
        }
        [HttpGet("saleInstallment")]
        public async Task<IActionResult> Get(GetSaleInstallmentViewModel viewModel)
        {
            return CustomResponse(await _service.GetById(viewModel));
        }
        [HttpGet("GetStatusEnum")]
        public IActionResult GetStatusEnum()
        {
            return new JsonResult(new {SaleInstallmentStatus.Paid, SaleInstallmentStatus.UnPaid,SaleInstallmentStatus.OverDue });
        }
        [HttpPut]
        public async Task<IActionResult> Put([FromBody] SaleInstallmentViewModel SaleInstallmentViewModel)
        {
            return !ModelState.IsValid ? CustomResponse(ModelState) : CustomResponse(await _service.Update(SaleInstallmentViewModel));
        }
        [HttpDelete("{Id}")]
        public async Task<IActionResult> Delete(Guid id)
        {
            return CustomResponse(await _service.Remove(id));
            return CustomResponse(await _service.Remove(id));
            return CustomResponse(await _service.Remove(id));
            return CustomResponse(await _service.Remove(id));
            return CustomResponse(await _service.Remove(id));
        }
    }
}
