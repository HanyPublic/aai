using System;
using System.Collections.Generic;
using System.Text;

namespace Aksaty.Application.ViewModels
{
    public class CustomerSalesUpdateViewModel
    {
        public Guid Id { get; set; }
        public decimal Balance { get; set; }
        public DateTime NextInstallmentDate { get; set; }
    }
}
