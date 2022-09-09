using Aksaty.Application.Interfaces;
using Aksaty.Application.ViewModels;
using Aksaty.Domain.Commands;
using Aksaty.Domain.Queries;
using Aksaty.Infra.CrossCutting.Util;
using AutoMapper;
using FluentValidation.Results;
using MediatR;
using NetDevPack.Mediator;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace Aksaty.Application.Services
{
    public class SaleInstallmentAppService : ISaleInstallmentAppService
    {
        private readonly IMediatorHandler _mediatorHandler;
        private readonly IMediator _mediator;
        private readonly IMapper _mapper;
        public SaleInstallmentAppService(IMediatorHandler mediatorHandler,IMediator mediator,IMapper mapper)
        {
            _mediatorHandler = mediatorHandler;
            _mediator = mediator;
            _mapper = mapper;
        }

        public async Task<SaleInstallmentViewModel> GetById(GetSaleInstallmentViewModel getSaleInstallmentViewModel)
        {
            var saleInstallment = await _mediator.Send(_mapper.Map<GetSaleInstallmentQuery>(getSaleInstallmentViewModel));
            return _mapper.Map<SaleInstallmentViewModel>(saleInstallment);
        }

        public async Task<PagedList<SaleInstallmentViewModel>> GetAll(GetAllSaleInstallmentViewModel getAllSaleInstallmentViewModel)
        {
            var gasiq = await _mediator.Send(_mapper.Map<GetAllSaleInstallmentQuery>(getAllSaleInstallmentViewModel));
            return _mapper.Map<PagedList<SaleInstallmentViewModel>>(gasiq);
        }
        public async Task<ValidationResult> Add(AddSaleInstallmentViewModel SaleInstallmentViewModel)
        {
          return await _mediatorHandler.SendCommand(_mapper.Map<AddSaleInstallmentCommand>(SaleInstallmentViewModel));
        }
        public async Task<ValidationResult> Update(SaleInstallmentViewModel SaleInstallmentViewModel)
        {
            return await _mediatorHandler.SendCommand(_mapper.Map<UpdateSaleInstallmentCommand>(SaleInstallmentViewModel));
        }
        public async Task<ValidationResult> UpdateStatus(SaleInstallmentViewModel SaleInstallmentViewModel)
        {
            return await _mediatorHandler.SendCommand(_mapper.Map<UpdateSaleInstallmentStatusCommand>(SaleInstallmentViewModel));
        }
        public Task<ValidationResult> Remove(Guid id)
        {
            return _mediatorHandler.SendCommand(new RemoveSaleInstallmentCommand(id));
        }

    }
}
