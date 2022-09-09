using Aksaty.Domain.Models;
using Aksaty.Infra.CrossCutting.Util;
using MediatR;
using System;
using System.Collections.Generic;
using System.Text;

namespace Aksaty.Domain.Queries
{
    public class GetAllProductsQuery:BaseQuery, IRequest<PagedList<Product>>
    {
        public decimal? MinAmount { get; set; }
        public decimal? MaxAmount { get; set; }
        public bool? IncludeSales { get; set; }
        public GetAllProductsQuery(decimal? maxAmount,decimal? minAmount,bool? includeSales,DateTime? createdAtFrom,DateTime? createdAtTo)
        {
            MinAmount = minAmount;
            MaxAmount = maxAmount;
            IncludeSales = includeSales;
            CreatedAtFrom = createdAtFrom;
            CreatedAtTo = createdAtTo;
        }
    }
}
