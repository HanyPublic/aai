using Aksaty.Application.Interfaces;
using Aksaty.Application.ViewModels;
using Aksaty.Infra.CrossCutting.Util;
using Aksaty.Services.Api.Controllers;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Aksaty.Api.Controllers
{
    [Authorize]
    [Route("api/[controller]")]
    public class ProductCopyController : ApiController
    {
        private readonly IProductAppService _service;
        public ProductCopyController(IProductAppService productAppService)
        {
            _service = productAppService;
        }
        [HttpGet]
        public async Task<IActionResult> Get([FromQuery] GetAllProductsViewModel getAllProductsViewModel)
        {
            if (string.IsNullOrWhiteSpace(getAllProductsViewModel.CreatedById)) getAllProductsViewModel.CreatedById = this.UserId;
            if (string.IsNullOrWhiteSpace(getAllProductsViewModel.TanentId)) getAllProductsViewModel.TanentId = this.TanentId;
            var pagedList = await _service.GetAll(getAllProductsViewModel);
            Response.Headers.AddPagination(pagedList.GetMetaData());
            return CustomResponse(pagedList.Items);
        }
        [HttpGet("GetProduct")]
        public async Task<ProductViewModel> Get([FromQuery] GetProductViewModel getProductViewModel)
        {
            return await _service.GetById(getProductViewModel);
        }
        [HttpPost]
        public async Task<IActionResult> Post([FromBody] AddProductViewModel productViewModel)
        {
            productViewModel.CreatedById = this.UserId;
            productViewModel.TanentId = this.TanentId;
            return !ModelState.IsValid ? CustomResponse(ModelState) : CustomResponse(await _service.Add(productViewModel));
        }
        [HttpPut]
        public async Task<IActionResult> Put([FromBody] ProductViewModel productViewModel)
        {
            return !ModelState.IsValid ? CustomResponse(ModelState) : CustomResponse(await _service.Update(productViewModel));
        }

        [HttpDelete("{Id}")]
        public async Task<IActionResult> Delete(Guid id)
        {
            return CustomResponse(await  _service.Remove(id));
        }
    }
}
