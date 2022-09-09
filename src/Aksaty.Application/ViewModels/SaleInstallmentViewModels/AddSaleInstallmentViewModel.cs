using System;
using System.Collections.Generic;
using System.Text;

namespace Aksaty.Application.ViewModels
{
    public class AddSaleInstallmentViewModel:BaseEntityViewModel
    {
        public Guid SaleId { get; set; }
        public decimal Amount { get; set; }
        private DateTime _DueDate { get; set; }
        public string Type { get; set; }
        public DateTime DueDate { 
            get { return this._DueDate; } 
            set {
                this._DueDate = value.ToLocalTime();
            } }
        public string Status { get; set; }
    }
}
