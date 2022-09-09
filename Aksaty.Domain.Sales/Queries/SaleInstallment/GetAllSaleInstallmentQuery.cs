using Aksaty.Domain.Models;
using Aksaty.Infra.CrossCutting.Util;
using MediatR;
using System;
using System.Collections.Generic;
using System.Text;

namespace Aksaty.Domain.Queries
{
    public class GetAllSaleInstallmentQuery : BaseQuery, IRequest<PagedList<SaleInstallment>>
    {
        public Guid SaleId { get; set; }
        public Guid CustomerId { get; set; }
        public DateTime? MinDueDate { get; set; }
        public DateTime? MaxDueDate { get; set; }
        public decimal? MinAmount { get; set; }
        public decimal? MaxAmount { get; set; }
        public bool? IncludeSale { get; set; }
        public GetAllSaleInstallmentQuery(
            string saleId,
            string customerId,
            DateTime? minDueDate, DateTime? maxDueDate, decimal? minAmount,
            decimal? maxAmount, bool? includeSale, string createdById,
            string tanentId, bool showOnWebsite, bool deleted, DateTime? createdAtFrom,
            DateTime? createdAtTo)
        {
            SaleId = string.IsNullOrEmpty(saleId) ? Guid.Empty : Guid.Parse(saleId);
            CustomerId = string.IsNullOrEmpty(customerId) ? Guid.Empty : Guid.Parse(customerId);
            MinDueDate = minDueDate;
            MaxDueDate = maxDueDate;
            MinAmount = minAmount;
            MaxAmount = maxAmount;
            IncludeSale = includeSale;
            CreatedById = createdById;
            TanentId = tanentId;
            ShowOnWebsite = showOnWebsite;
            Deleted = deleted;
            CreatedAtFrom = createdAtFrom;
            CreatedAtTo = createdAtTo;
        }
        public GetAllSaleInstallmentQuery(
       Guid saleId)
        {
            SaleId = saleId;
        }
        public GetAllSaleInstallmentQuery(
            Guid saleId,
            string createdById,
            string tanentId,
            string orderBy
            )
        {
            SaleId = saleId;
            CreatedById = createdById;
            TanentId = tanentId;
            OrderBy = orderBy;
        }
    }

}
