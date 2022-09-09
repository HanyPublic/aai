using Aksaty.Application.Interfaces;
using Aksaty.Application.ViewModels;
using Aksaty.Infra.CrossCutting.Util;
using Aksaty.Services.Api.Controllers;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using NetDevPack.Identity.User;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Aksaty.Api.Controllers
{
    [Authorize]
    [Route("sale-management")]
    public class Sale2Controller : ApiController
    {
        private readonly ISaleAppService _saleAppService;
        private readonly ISaleAppService _saleAppService2;
        private readonly ISaleAppService _saleAppService3;
        private readonly ISaleAppService _saleAppService4;
        private readonly ISaleAppService _saleAppService5;
        private readonly ISaleAppService _saleAppService6;
        public Sale2Controller(ISaleAppService saleAppService)
        {
            _saleAppService = saleAppService;
        }
        [HttpGet]
        public async Task<IActionResult> Get([FromQuery] GetAllSalesViewModel getAllSalesViewModel)
        {
            if(string.IsNullOrEmpty(getAllSalesViewModel.CreatedById))getAllSalesViewModel.CreatedById = this.UserId;
            if (string.IsNullOrEmpty(getAllSalesViewModel.TanentId)) getAllSalesViewModel.TanentId = this.TanentId;
            var pagedList = await _saleAppService.GetAll(getAllSalesViewModel);
            Response.Headers.AddPagination(pagedList.GetMetaData());
            return CustomResponse(pagedList.Items);
        }
        [HttpGet("GetSale")]
        public async Task<SaleViewModel> Get([FromQuery] GetSaleViewModel getSaleViewModel)
        {
            return await _saleAppService.GetById(getSaleViewModel);
        }
        /// <summary>
        /// Creates a mock model for sale
        /// </summary>
        /// <param name="addSaleViewModel"></param>
        /// <returns></returns>
        [HttpPost("CreateMockSale")]
        public IActionResult CreateMockSale([FromBody] AddSaleViewModel addSaleViewModel)
        {
            addSaleViewModel.CreatedById = this.UserId;
            addSaleViewModel.TanentId = this.TanentId;
            return !ModelState.IsValid ? CustomResponse(ModelState) : CustomResponse(_saleAppService.CreateMockSale(addSaleViewModel));
        }
        /// <summary>
        /// The mock model is then posted here after review
        /// </summary>
        /// <param name="SaleViewModel"></param>
        /// <returns></returns>
        [HttpPost("CreateSale")]
        public async Task<IActionResult> CreateSale([FromBody] SaleViewModel SaleViewModel)
        {
            SaleViewModel.CreatedById = this.UserId;
            SaleViewModel.TanentId = this.TanentId;
            return !ModelState.IsValid ? CustomResponse(ModelState) : CustomResponse(await _saleAppService.Create(SaleViewModel));
        }
        [HttpPut]
        public async Task<IActionResult> Put([FromBody] SaleViewModel SaleViewModel)
        {
            return !ModelState.IsValid ? CustomResponse(ModelState) : CustomResponse(await _saleAppService.Update(SaleViewModel));
        }
        [HttpDelete("{Id}")]
        public async Task<IActionResult> Delete(Guid id)
        {
            return CustomResponse(await _saleAppService.Remove(id));
        }
    }
}
