using Aksaty.Application.Services;
using Aksaty.Services.Api.Controllers;
using Aksaty.Application.Interfaces;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Threading.Tasks;
using Aksaty.Application.ViewModels;
using Aksaty.Infra.CrossCutting.Util;
using System.Linq;
namespace Aksaty.Api.Controllers
{
    [Authorize]
    [Route("tanent-management")]
    public class TanentController : ApiController
    {
        private readonly ITanentAppService _tanentSerivce;
        public TanentController(ITanentAppService tanentAppService)
        {
            _tanentSerivce = tanentAppService;
        }
        /// <summary>
        /// Gets a tanent by db
        /// </summary>
        /// <returns>IActionResult</returns>
        [HttpGet]
        public async Task<IActionResult> GetTanent()
        {
            var model = await _tanentSerivce.GetByUserId(UserId);
            if (model != null)
            {
                return CustomResponse(model);
            }
            else
            {
                return NotFound();
            }
        }
        /// <summary>
        /// Add/Update tanent to database
        /// </summary>
        /// <param name="tanentViewModel"></param>
        /// <returns>IActionResult</returns>
        [HttpPost]
        public async Task<IActionResult> AddUpdateTanent(AddTanentViewModel tanentViewModel)
        {
            if (ModelState.IsValid)
            {
                tanentViewModel.UserId = UserId;
                return CustomResponse(await _tanentSerivce.AddUpdate(tanentViewModel));
            }
            else
            {
                return CustomResponse(ModelState);
            }
        }
    }
}
