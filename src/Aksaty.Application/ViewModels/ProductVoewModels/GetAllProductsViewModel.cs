using Aksaty.Infra.CrossCutting.Util;
using System;
using System.Collections.Generic;
using System.Text;

namespace Aksaty.Application.ViewModels
{
    public class GetAllProductsViewModel:BaseQuery
    {
        public decimal? MinAmount { get; set; }
        public decimal? MaxAmount { get; set; }
        public bool? IncludeSales { get; set; } = false;
    }
}
