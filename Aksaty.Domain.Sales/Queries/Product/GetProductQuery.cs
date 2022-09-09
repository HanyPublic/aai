using Aksaty.Domain.Models;
using MediatR;
using System;
using System.Collections.Generic;
using System.Text;

namespace Aksaty.Domain.Queries
{
    public class GetProductQuery:IRequest<Product>
    {
        public Guid Id { get; set; }
        public bool IncludeSales { get; set; } = false;
        public GetProductQuery(Guid id,bool includeSales)
        {
            Id = id;

            IncludeSales = includeSales;
        }
    }
}
