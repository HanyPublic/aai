using Aksaty.Domain.Models;
using Aksaty.Infra.Util;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace Aksaty.Application.ViewModels
{
    public class AddSaleViewModel:BaseEntityViewModel
    {
    
        [Display(Name = "Customer ID")]
        public Guid? CustomerId { get; set; }
        [Required(ErrorMessage = "StartDate Is Required")]
        [DisplayFormat(ApplyFormatInEditMode = true, DataFormatString = "{0:yyyy-MM-dd}")]
        [DataType(DataType.Date, ErrorMessage = "Data em formato inválido")]
        [Display(Name = "Start Date")]
        public DateTime StartDate { get;  set; }
        [Required(ErrorMessage = "Amount Is Required")]
        [Display(Name = "Amount")]
        public decimal Amount { get;  set; }
        [Required(ErrorMessage = "Paid Amount Is Required")]
        [Display(Name = "Paid Amount")]
        public decimal PaidAmount { get;  set; }
        [Required(ErrorMessage = "Installment MonthNumber Is Required")]
        [Display(Name = "Installment MonthNumber")]
        public int InstallmentMonthNumber { get;  set; } // default come from tanents 
        public decimal Percentage { get; set; }
        public virtual List<ProductViewModel> Products { get; set; }
        public string Status { get; set; } = SaleStatus.Open;

    }
}
