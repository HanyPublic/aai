using Aksaty.Domain.Models;
using Aksaty.Infra.CrossCutting.Util;
using MediatR;
using System;
using System.Collections.Generic;
using System.Text;

namespace Aksaty.Domain.Queries
{
    public class GetAllSalesQuery : BaseQuery, IRequest<PagedList<Sale>>
    {
        public Guid CustomerId { get; set; }
        public DateTime? MinStartDate { get; set; }
        public DateTime? MaxStartDate { get; set; }
        public decimal? MinAmount { get; set; }
        public decimal? MaxAmount { get; set; }
        public decimal? MinPaidAmount { get; set; }
        public decimal? MaxPaidAmount { get; set; }
        public decimal? MinRemainingAmount { get; set; }
        public decimal? MaxRemainingAmount { get; set; }
        public int? MinInstallmentMonthNumber { get; set; }
        public int? MaxInstallmentMonthNumber { get; set; }
        public int? MinInstallmentValue { get; set; }
        public int? MaxInstallmentValue { get; set; }
        public bool? IncludeSaleInstallments { get; set; } = false;
        public bool? IncludeProducts { get; set; } = false;
        public bool? IncludeCustomers { get; set; } = false;
        public GetAllSalesQuery(
            string customerId,
            DateTime? minStartDate, DateTime? maxStartDate,
            decimal? minAmount, decimal? maxAmount, 
            decimal? minPaidAmount, decimal? maxPaidAmount,
            decimal? minRemainingAmount, decimal? maxRemainingAmount,
            int? minInstallmentMonthNumber, int? maxInstallmentMonthNumber,
            int? minInstallmentValue, int? maxInstallmentValue,bool? includeSaleInstallments,bool? includeProducts,bool? includeCustomers,
            string createdById,string tanentId,bool showOnWebsite,bool deleted,DateTime? createdAtFrom,DateTime?createdAtTo)
        {
            CustomerId=string.IsNullOrEmpty(customerId) ? Guid.Empty : Guid.Parse(customerId);
            MinStartDate = minStartDate;
            MaxStartDate = maxStartDate;
            MinAmount = minAmount;
            MaxAmount = maxAmount;
            MinPaidAmount = minPaidAmount;
            MaxPaidAmount = maxPaidAmount;
            MinRemainingAmount = minRemainingAmount;
            MaxRemainingAmount = maxRemainingAmount;
            MinInstallmentMonthNumber = minInstallmentMonthNumber;
            MaxInstallmentMonthNumber = maxInstallmentMonthNumber;
            MinInstallmentValue = minInstallmentValue;
            MaxInstallmentValue = maxInstallmentValue;
            IncludeProducts = includeProducts;
            IncludeSaleInstallments = includeSaleInstallments;
            IncludeCustomers = includeCustomers;
            CreatedById = createdById;
            TanentId = tanentId;
            ShowOnWebsite = showOnWebsite;
            Deleted = deleted;
            CreatedAtFrom = createdAtFrom;
            CreatedAtTo = createdAtTo;
        }
    }
}
