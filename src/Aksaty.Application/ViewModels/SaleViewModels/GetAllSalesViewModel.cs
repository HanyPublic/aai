using Aksaty.Infra.CrossCutting.Util;
using System;
using System.Collections.Generic;
using System.Text;

namespace Aksaty.Application.ViewModels
{
    public class GetAllSalesViewModel:BaseQuery
    {
        public string CustomerId { get; set; }
        public string Status { get; set; }
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
    }
}
