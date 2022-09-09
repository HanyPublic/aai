using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using Aksaty.Application.EventSourcedNormalizers;
using Aksaty.Application.Interfaces;
using Aksaty.Application.ViewModels;
using Aksaty.Infra.CrossCutting.Util;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;

namespace Aksaty.Services.Api.Controllers
{
    [Authorize]
    [Route("customer-management")]
    public class CustomerController : ApiController
    {
        private readonly ICustomerAppService _customerAppService;
        public CustomerController(ICustomerAppService customerAppService)
        {
            _customerAppService = customerAppService;
        }

        [HttpGet]
        public async Task<IEnumerable<CustomerViewModel>> Get([FromQuery]GetAllCustomersViewModel viewModel)
        {
            viewModel.CreatedById = this.UserId;
            viewModel.TanentId = this.TanentId;
            var pagedList = await _customerAppService.GetAll(viewModel);
            Response.Headers.AddPagination(pagedList.GetMetaData());
            return pagedList.Items;
        }

        [HttpGet("{id:guid}")]
        public async Task<CustomerViewModel> Get(Guid id)
        {
            var customer= await _customerAppService.GetById(id);
            return customer;
        }

        [HttpPost]
        public async Task<IActionResult> Post([FromBody] CustomerRegisterViewModel viewModel)
        {
            viewModel.CreatedById = this.UserId;
            viewModel.TanentId = this.TanentId;
            return !ModelState.IsValid ? CustomResponse(ModelState) : CustomResponse(await _customerAppService.Register(viewModel));
        }

        [HttpPut]
        public async Task<IActionResult> Put([FromBody]CustomerViewModel customerViewModel)
        {
            return !ModelState.IsValid ? CustomResponse(ModelState) : CustomResponse(await _customerAppService.Update(customerViewModel));
        }
        [HttpDelete("{id:guid}")]
        public async Task<IActionResult> Delete(Guid id)
        {
            return CustomResponse(await _customerAppService.Remove(id));
        }

        [HttpGet("history/{id:guid}")]
        public async Task<IList<CustomerHistoryData>> History(Guid id)
        {
            return await _customerAppService.GetAllHistory(id);
        }
    }
}
