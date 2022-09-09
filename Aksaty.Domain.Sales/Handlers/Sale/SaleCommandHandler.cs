using Aksaty.Domain.Models;
using Aksaty.Domain.Events;
using Aksaty.Domain.Commands;
using Aksaty.Domain.Interfaces;
using FluentValidation.Results;
using MediatR;
using NetDevPack.Messaging;
using System;
using System.Collections.Generic;
using System.Threading;
using System.Threading.Tasks;
using Aksaty.Infra.CrossCutting.Util;
using Aksaty.Domain.Queries;
using System.Linq;
using Aksaty.Infra.Util;

namespace Aksaty.Domain.Handlers
{
    public class SaleCommandHandler : CommandHandler,
        IRequestHandler<GetAllSalesQuery, PagedList<Sale>>,
        IRequestHandler<GetSaleQuery, Sale>,
        IRequestHandler<CreateNewSaleCommand, ValidationResult>,
        IRequestHandler<UpdateSaleCommand, ValidationResult>,
        IRequestHandler<RemoveSaleCommand, ValidationResult>

    {
        private readonly ISaleRepository _saleRepository;
        private readonly ISaleInstallmentRepository _saleInstallmentRepository;
        private readonly ISalesProductsRepository _salesProductsRepository;
        public SaleCommandHandler(ISaleRepository saleRepository, ISaleInstallmentRepository saleInstallmentRepository,
            ISalesProductsRepository salesProductsRepository)
        {
            _saleRepository = saleRepository;
            _saleInstallmentRepository = saleInstallmentRepository;
            _salesProductsRepository = salesProductsRepository;
        }
        /// <summary>
        /// Uses the posted mock model to create the sale
        /// </summary>
        /// <param name="request"></param>
        /// <param name="cancellationToken"></param>
        /// <returns></returns>
        public async Task<ValidationResult> Handle(CreateNewSaleCommand request, CancellationToken cancellationToken)
        {
            if (!request.IsValid()) return request.ValidationResult;
            var sale = new Sale(
                id: request.Id, customerId: request.CustomerId, startDate: request.StartDate,
                status: request.Status, amount: request.Amount, paidAmount: request.PaidAmount,
                remainingAmount: request.RemainingAmount, installmentMonthNumber: request.InstallmentMonthNumber, installmentValue: request.InstallmentValue,
                percentage: request.Perecntage, request.SaleInstallments, request.CreatedById, request.TanentId, request.CreatedAt, request.ShowOnWebsite,
                request.Deleted
                );
            //Adds realtionship with the products
            if (request.Products != null && request.Products.Count > 0)
            {
                var salesProducts = new List<SalesProducts>();
                foreach (var prod in request.Products)
                {
                    salesProducts.Add(new SalesProducts() { ProductId = prod.Id, Sale = sale });
                }
                sale.SalesProducts = salesProducts;
            }
            sale.AddDomainEvent(new SaleCreatedEvent(
                 id: sale.Id, customerId: sale.CustomerId, startDate: sale.StartDate,
                status: sale.Status, amount: sale.Amount, paidAmount: sale.PaidAmount,
                remainingAmount: sale.RemainingAmount, installmentMonthNumber: sale.InstallmentMonthNumber, installmentValue: sale.InstallmentValue,
                percentage: sale.Percentage, sale.CreatedById, sale.TanentId, sale.CreatedAt, sale.ShowOnWebsite,
                sale.Deleted
                ));

            _saleRepository.Add(sale);
            return await Commit(_saleRepository.UnitOfWork);
        }
        /// <summary>
        /// Updates the sale
        /// </summary>
        /// <param name="request"></param>
        /// <param name="cancellationToken"></param>
        /// <returns></returns>
        public async Task<ValidationResult> Handle(UpdateSaleCommand request, CancellationToken cancellationToken)
        {
            if (!request.IsValid()) return request.ValidationResult;
            var sale = await _saleRepository.GetById(request.Id, true, true, false);
            if (sale != null)
            {
                //gets new products by checking if the posted ones exist in the old
                var newProducts = request.Products.Where(p => sale.SalesProducts.Any(sp => sp.ProductId == p.Id) == false).ToList();
                //gets removed products by checking if the ones in the old exist in posted sale
                var toRemoveSalesProducts = sale.SalesProducts.Where(sp => request.Products.Any(p => p.Id == sp.ProductId) == false).ToList();
                if (newProducts.Count() > 0)
                {
                    foreach (var product in newProducts)
                    {
                        sale.SalesProducts.Add(SalesProducts.createSalesProducts(product.Id, sale));
                    }
                }
                if (toRemoveSalesProducts.Count() > 0)
                {
                    foreach (var sp in toRemoveSalesProducts)
                    {
                        _salesProductsRepository.Remove(sp);
                    }
                }

                var remainingAmount = request.RemainingAmount;

                var installmentValue = request.InstallmentValue;

                //If sale satatus changes
                if (sale.Status != request.Status)
                {
                    if (request.Status == SaleStatus.Closed)
                    {
                        remainingAmount = 0;
                    }
                }

                var InstallmentMonthNumberChange = sale.InstallmentMonthNumber - request.InstallmentMonthNumber;

                if (InstallmentMonthNumberChange > 0)
                {
                    //month numbers deacresed so last saleinstalmments are removed 
                    for (int i = 0; i < InstallmentMonthNumberChange; i++)
                    {
                        var si = sale.SaleInstallments.LastOrDefault();
                        _saleInstallmentRepository.Remove(si);
                        sale.SaleInstallments.Remove(si);
                    }
                }

                foreach (var si in sale.SaleInstallments)
                {
                    si.Amount = installmentValue;
                    if (remainingAmount == 0 || request.Status == SaleStatus.Closed) si.Status = SaleInstallmentStatus.Paid;
                    if (sale.StartDate != request.StartDate) si.DueDate = request.StartDate;
                    _saleInstallmentRepository.Update(si);
                }

                if (InstallmentMonthNumberChange < 0)
                {
                    //month numbers increased so saleinstalmments are added  
                    InstallmentMonthNumberChange = Math.Abs(InstallmentMonthNumberChange);
                    for (int i = 0; i < InstallmentMonthNumberChange; i++)
                    {
                        var si = SaleInstallment.CreateSaleInstallment(
                                Guid.NewGuid(),
                                sale.Id, installmentValue, sale.StartDate.AddMonths(sale.InstallmentMonthNumber + i),
                                sale.Status, sale.TanentId, sale.CreatedById, sale.CreatedAt, sale.ShowOnWebsite, sale.Deleted);
                        sale.SaleInstallments.Add(si);
                        _saleInstallmentRepository.Add(si);
                    }
                }

                sale.UpdateSale(
                id: request.Id, customerId: request.CustomerId, startDate: request.StartDate,
                status: request.Status, amount: request.Amount, paidAmount: request.PaidAmount,
                remainingAmount: remainingAmount, installmentMonthNumber: request.InstallmentMonthNumber,
                installmentValue: installmentValue, percentage: request.Perecntage, request.ShowOnWebsite,
                request.Deleted);

                sale.AddDomainEvent(new SaleUpdateEvent(
                    id: sale.Id, customerId: sale.CustomerId, startDate: sale.StartDate,
                    status: sale.Status, amount: sale.Amount, paidAmount: sale.PaidAmount,
                    remainingAmount: sale.RemainingAmount, installmentMonthNumber: sale.InstallmentMonthNumber,
                    installmentValue: sale.InstallmentValue, percentage: sale.Percentage, request.ShowOnWebsite, request.Deleted));

                _saleRepository.Update(sale);
                return await Commit(_saleRepository.UnitOfWork);
            }
            else
            {
                AddError("The sale doesn't exists.");
                return ValidationResult;
            }

        }

        public async Task<ValidationResult> Handle(RemoveSaleCommand message, CancellationToken cancellationToken)
        {
            if (!message.IsValid()) return message.ValidationResult;

            var customer = await _saleRepository.GetById(message.Id);

            if (customer is null)
            {
                AddError("The sale doesn't exists.");
                return ValidationResult;
            }

            customer.AddDomainEvent(new SaleRemovedEvent(message.Id));

            _saleRepository.Remove(customer);

            return await Commit(_saleRepository.UnitOfWork);
        }
        public void Dispose()
        {
            _saleRepository.Dispose();
        }

        public async Task<PagedList<Sale>> Handle(GetAllSalesQuery request, CancellationToken cancellationToken)
        {
            return await _saleRepository.GetAll(request);
        }

        public async Task<Sale> Handle(GetSaleQuery request, CancellationToken cancellationToken)
        {
            return await _saleRepository.GetById(request.Id, request.IncludeProducts, request.IncludeSaleInstallments,request.IncludeCustomers);
        }
    }
}
