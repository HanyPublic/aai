using Aksaty.Infra.CrossCutting.Util;
using System;
using System.Collections.Generic;
using System.Text;

namespace Aksaty.Application.ViewModels
{
    public class GetAllSaleInstallmentViewModel:BaseQuery
    {
        public string SaleId { get; set; }
        public string CustomerId { get; set; }
        public DateTime? MinDueDate { get; set; }
        public DateTime? MaxDueDate { get; set; }
        public decimal? MinAmount { get; set; }
        public decimal? MaxAmount { get; set; }
        public bool? IncludeSales { get; set; } = false;
    }
}
