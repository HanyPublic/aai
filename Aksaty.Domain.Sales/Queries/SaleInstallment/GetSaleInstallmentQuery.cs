using MediatR;
using System;
using Aksaty.Domain.Models;
using System.Collections.Generic;
using System.Text;

namespace Aksaty.Domain.Queries
{
    public class GetSaleInstallmentQuery:IRequest<SaleInstallment>
    {
        public Guid Id { get; set; }
        public bool? IncludeSale { get; set; } = false;
        public GetSaleInstallmentQuery(Guid id,bool? includeSale)
        {
            Id = id;
            IncludeSale = includeSale;
        }
    }
}
