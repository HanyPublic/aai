using Aksaty.Domain.Models;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace Aksaty.Application.ViewModels
{
    public class SaleViewModel : AddSaleViewModel
    {

        [Display(Name = "ID")]
        public Guid Id { get; set; }
        public decimal AmountWithInterest
        {
            get
            {
                return (Amount) + Sale.CalculateInterest(this.Amount - this.PaidAmount, this.Percentage);
            }
        }

        public decimal Interest
        {
            get
            {
                return Sale.CalculateInterest(this.Amount - this.PaidAmount, this.Percentage);
            }
        }
        [Required(ErrorMessage = "Remaining Amount Is Required")]
        [Display(Name = "Remaining Amount")]
        public decimal RemainingAmount { get; set; }
        [Required(ErrorMessage = "Installment Value Is Required")]
        [Display(Name = "Installment Value")]
        public int InstallmentValue { get; set; }
        public virtual List<SaleSaleInstallmentViewModel> SaleInstallments { get; set; } = new List<SaleSaleInstallmentViewModel>();
        public virtual CustomerViewModel Customer { get; set; }

    }
}
