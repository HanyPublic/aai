using Aksaty.Application.Interfaces;
using Aksaty.Application.ViewModels;
using Aksaty.Domain.Commands;
using Aksaty.Domain.Interfaces;
using Aksaty.Domain.Models;
using Aksaty.Domain.Queries;
using Aksaty.Domain.Tanents.Queries;
using Aksaty.Infra.CrossCutting.Util;
using Aksaty.Infra.Util;
using AutoMapper;
using FluentValidation.Results;
using MediatR;
using NetDevPack.Mediator;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Aksaty.Application.Services
{
    public class SaleAppService : ISaleAppService
    {
        private readonly IMapper _mapper;
        private readonly IMediatorHandler _mediatorHandler;
        private readonly IMediator _mediator;

        public SaleAppService(IMapper mapper, IMediatorHandler mediatorHandler, IMediator mediator, ISaleRepository saleRepository, IProductRepository productRepository, ITanentRepository tanentRepository)
        {
            _mapper = mapper;
            _mediatorHandler = mediatorHandler;
            _mediator = mediator;
        }
        public async Task<ValidationResult> Create(SaleViewModel saleViewModel)
        {
            return await _mediatorHandler.SendCommand(_mapper.Map<CreateNewSaleCommand>(saleViewModel));
        }
        public SaleViewModel CreateMockSale(AddSaleViewModel addSaleViewModel)
        {
            var saleVM = _mapper.Map<SaleViewModel>(addSaleViewModel);
            saleVM.Id = Guid.NewGuid();
            if (string.IsNullOrEmpty(saleVM.Status)) saleVM.Status = SaleStatus.Open;
            saleVM.RemainingAmount =Sale.CalculateRemainingWithInterest((saleVM.Amount - saleVM.PaidAmount),saleVM.Percentage);
            if (saleVM.RemainingAmount > 0)
            {
                saleVM.InstallmentValue = Sale.CalculateInstallmentValue(saleVM.RemainingAmount,saleVM.InstallmentMonthNumber);
                for (int i = 0; i < saleVM.InstallmentMonthNumber; i++)
                {
                    var saleInstallment = SaleInstallmentViewModel.createSaleInstallment(
                        id: Guid.NewGuid(),
                        amount: saleVM.InstallmentValue,saleId: saleVM.Id,
                        status: SaleInstallmentStatus.UnPaid,dueDate: saleVM.StartDate.AddMonths(i),
                        tanentId:saleVM.TanentId,createdById: saleVM.CreatedById,
                        createdAt:saleVM.CreatedAt.Value,showOnWebsite:saleVM.ShowOnWebsite.Value,
                        deleted:saleVM.Deleted.Value);
                    saleVM.SaleInstallments.Add(saleInstallment);
                }
            }
            else
            {
                saleVM.Status = SaleStatus.Closed;
            }
            return saleVM;
        }

        public async Task<PagedList<SaleViewModel>> GetAll(GetAllSalesViewModel getAllSalesViewModel)
        {
            return _mapper.Map<PagedList<SaleViewModel>>(await _mediator.Send(_mapper.Map<GetAllSalesQuery>(getAllSalesViewModel)));
        }

        public async Task<SaleViewModel> GetById(GetSaleViewModel saleViewModel)
        {
            return _mapper.Map<SaleViewModel>(await _mediator.Send(_mapper.Map<GetSaleQuery>(saleViewModel)));
        }

        public async Task<ValidationResult> Remove(Guid id)
        {
            return await _mediatorHandler.SendCommand(new RemoveSaleCommand(id));

        }

        public async Task<ValidationResult> Update(SaleViewModel saleViewModel)
        {
            return await _mediatorHandler.SendCommand(_mapper.Map<UpdateSaleCommand>(saleViewModel));
        }
    }
}
