using Aksaty.Domain.Models;
using MediatR;
using System;
using System.Collections.Generic;
using System.Text;

namespace Aksaty.Domain.Queries
{
    public class GetSaleQuery:IRequest<Sale>
    {
        public Guid Id { get; set; }
        public bool IncludeSaleInstallments { get; set; } = false;
        public bool IncludeProducts { get; set; } = false;
        public bool IncludeCustomers { get; set; } = false;
        public GetSaleQuery(Guid id,bool includeSaleInstallments, bool inclueProducts,bool includeCustomers)
        {
            Id = id;
            IncludeSaleInstallments = includeSaleInstallments;
            IncludeProducts = inclueProducts;
            IncludeCustomers = includeCustomers;
        }
    }
}
