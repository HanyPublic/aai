using Aksaty.Domain.Commands;
using Aksaty.Domain.Events;
using Aksaty.Domain.Interfaces;
using Aksaty.Domain.Models;
using Aksaty.Domain.Queries;
using Aksaty.Infra.CrossCutting.Util;
using Aksaty.Infra.Util;
using FluentValidation.Results;
using MediatR;
using NetDevPack.Messaging;
using System;
using System.Linq;
using System.Threading;
using System.Threading.Tasks;

namespace Aksaty.Domain.Handlers
{
    public class SaleInstallmentCommandsHandler :
        CommandHandler,
        IRequestHandler<AddSaleInstallmentCommand, ValidationResult>,
        IRequestHandler<UpdateSaleInstallmentCommand, ValidationResult>,
        IRequestHandler<RemoveSaleInstallmentCommand, ValidationResult>,
        IRequestHandler<GetAllSaleInstallmentQuery, PagedList<SaleInstallment>>,
        IRequestHandler<GetSaleInstallmentQuery, SaleInstallment>
    {
        private readonly ISaleInstallmentRepository _repository;
        private readonly ISaleRepository _saleRepository;
        public SaleInstallmentCommandsHandler(ISaleInstallmentRepository saleInstallmentRepository, ISaleRepository saleRepository)
        {
            _repository = saleInstallmentRepository;
            _saleRepository = saleRepository;
        }
        public async Task<ValidationResult> Handle(AddSaleInstallmentCommand request, CancellationToken cancellationToken)
        {
            //when saleinstallment is added to a sale the month number increases and the installment value decreases accordingly 
            var sale = await _saleRepository.GetById(request.SaleId, false, true, false);
            if (sale != null)
            {

                sale.InstallmentMonthNumber++;
                sale = UpdateSaleInstallmentValue(sale);
                UpdateSaleDomainEvents(sale);
                _saleRepository.Update(sale);

                var saleInstallment = new SaleInstallment(
                    id: Guid.NewGuid(),
                    saleId: request.SaleId,
                    amount: sale.InstallmentValue,
                    dueDate: request.DueDate,
                    status: sale.Status,
                    tanentId: sale.TanentId,
                    createdById: sale.CreatedById,
                    createdAt: sale.CreatedAt,
                    showOnWebsite: sale.ShowOnWebsite,
                    deleted: sale.Deleted, ""
                    );
                saleInstallment.AddDomainEvent(new SaleInstallmentAddedEvent(
                     id: saleInstallment.Id,
                    saleId: saleInstallment.SaleId,
                    amount: saleInstallment.Amount,
                    dueDate: saleInstallment.DueDate,
                    status: saleInstallment.Status
                    ));
                _repository.Add(saleInstallment);
                return await Commit(_repository.UnitOfWork);
            }
            else
            {
                AddError($"Sale with id {request.SaleId} was not found.");
                return ValidationResult;
            }

        }

        public async Task<ValidationResult> Handle(UpdateSaleInstallmentCommand request, CancellationToken cancellationToken)
        {
            var oldSI = await _repository.GetById(request.Id, false);

            var differenceInAmount = request.Amount - oldSI.Amount;
            if (differenceInAmount != 0)
            {
                var installments = await _repository.GetAllList(new GetAllSaleInstallmentQuery(request.SaleId, oldSI.CreatedById, oldSI.TanentId, "DueDate asc"));
                if (differenceInAmount > 0)
                {
                    var index = installments.FindIndex(i => i.Id == oldSI.Id);
                    Decimal remainder = 0;
                    var z = index + 1;
                    do
                    {
                        var si = installments[z];
                        remainder = differenceInAmount - si.Amount;
                        if (remainder > 0)
                        {
                            si.Amount = 0;
                            differenceInAmount = remainder;
                        }
                        else
                        {
                            si.Amount = si.Amount - differenceInAmount;
                        }
                        _repository.Update(si);
                        z++;
                    } while (remainder > 0);
                }
                else
                {
                    differenceInAmount = Math.Abs(differenceInAmount);
                    var remainderSI = installments.FirstOrDefault(si => si.Type == SaleInstallmentTypes.Remainder);
                    if (remainderSI != null)
                    {
                        remainderSI.Amount += differenceInAmount;
                        _repository.Update(remainderSI);
                    }
                    else
                    {
                        var lastInstallment = installments.LastOrDefault();
                        _repository.Add(
                            SaleInstallment.CreateSaleInstallment(
                                Guid.NewGuid(),
                                oldSI.SaleId,
                                differenceInAmount,
                                lastInstallment.DueDate.AddMonths(1),
                                SaleInstallmentStatus.UnPaid,
                                oldSI.TanentId,
                                oldSI.CreatedById,
                                DateTime.Now, true,
                                false,
                                SaleInstallmentTypes.Remainder));
                    }
                }
            }

            if (oldSI.Status != request.Status)
            {
                await UpdateSaleValue(request.Status, oldSI, request.Amount);
            }
            var saleInstallment = new SaleInstallment(
                      id: oldSI.Id,
                      saleId: oldSI.SaleId,
                      amount: request.Amount,
                      dueDate: oldSI.DueDate,
                      status: request.Status, tanentId: oldSI.TanentId,
                      createdById: oldSI.CreatedById, createdAt: oldSI.CreatedAt,
                      showOnWebsite: oldSI.ShowOnWebsite, deleted: oldSI.Deleted,
                      oldSI.Type

                      );
            saleInstallment.AddDomainEvent(new SaleInstallmentStatusUpdatedEvent(
                 id: saleInstallment.Id,
                saleId: saleInstallment.SaleId,
                status: saleInstallment.Status
                ));
            _repository.Update(saleInstallment);
            return await Commit(_repository.UnitOfWork);
        }

        public async Task<ValidationResult> Handle(RemoveSaleInstallmentCommand request, CancellationToken cancellationToken)
        {
            var saleInstallment = await _repository.GetById(request.Id, false);
            if (saleInstallment != null)
            {
                //when saleinstallment is added to a sale the month number decreases and the installment value increases accordingly 

                var sale = await _saleRepository.GetById(saleInstallment.SaleId, false, true, false);
                sale.InstallmentMonthNumber--;
                sale.SaleInstallments.Remove(saleInstallment);
                sale = UpdateSaleInstallmentValue(sale);
                if (saleInstallment.Status == SaleInstallmentStatus.Paid)
                {
                    sale.RemainingAmount += saleInstallment.Amount;
                }
                UpdateSaleDomainEvents(sale);
                _saleRepository.Update(sale);
                _repository.Remove(saleInstallment);
                return await Commit(_repository.UnitOfWork);
            }
            else
            {
                AddError($"SaleInstallment with id {request.Id} was not found.");
                return ValidationResult;
            }
        }
        public async Task<PagedList<SaleInstallment>> Handle(GetAllSaleInstallmentQuery request, CancellationToken cancellationToken)
        {
            return await _repository.GetAll(request);
        }

        public async Task<SaleInstallment> Handle(GetSaleInstallmentQuery request, CancellationToken cancellationToken)
        {
            return await _repository.GetById(request.Id, request.IncludeSale);
        }

        private async Task UpdateSaleValue(string status, SaleInstallment oldSi, decimal amount)
        {
            //when saleinstallment is updated and it's status changes

            if (status == SaleInstallmentStatus.Paid || status == SaleInstallmentStatus.UnPaid)
            {
                var sale = await _saleRepository.GetById(oldSi.SaleId);

                if (status == SaleInstallmentStatus.Paid)
                {
                    //if it changes to paid the remaining amount of the sale decreases 
                    sale.RemainingAmount -= amount;
                    if (sale.RemainingAmount <= 0)
                    {
                        sale.RemainingAmount = 0;
                        sale.Status = SaleStatus.Closed;
                    }
                }
                else if (status == SaleInstallmentStatus.UnPaid && oldSi.Status == SaleInstallmentStatus.Paid)
                {
                    //if it changes to unpaid the remaining amount of the sale increases 
                    sale.RemainingAmount += amount;
                    if (sale.Status == SaleStatus.Closed)
                    {
                        sale.Status = SaleStatus.Open;
                    }
                }
                UpdateSaleDomainEvents(sale);
                _saleRepository.Update(sale);
            }
        }

        /// <summary>
        /// Recalculates the saleinstallment value
        /// </summary>
        /// <param name="sale"></param>
        /// <returns></returns>
        private Sale UpdateSaleInstallmentValue(Sale sale)
        {
            sale.InstallmentValue = Sale.CalculateInstallmentValue(sale.RemainingAmount, sale.InstallmentMonthNumber);
            foreach (var si in sale.SaleInstallments)
            {
                si.Amount = sale.InstallmentValue;
            }
            return sale;
        }

        private void UpdateSaleDomainEvents(Sale sale)
        {
            sale.AddDomainEvent(new SaleUpdateEvent(
           id: sale.Id, customerId: sale.CustomerId, startDate: sale.StartDate,
          status: sale.Status, amount: sale.Amount, paidAmount: sale.PaidAmount,
          remainingAmount: sale.RemainingAmount, installmentMonthNumber: sale.InstallmentMonthNumber, installmentValue: sale.InstallmentValue,
          percentage: sale.Percentage, sale.ShowOnWebsite, sale.Deleted
          ));
        }
    }
}
