using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace Aksaty.Application.ViewModels
{
    public class SaleProductsViewModel
    {
        [Required(ErrorMessage = "The ProductId is Required")]
        [DisplayName("Product Id")]
        public Guid? ProductId { get; set; }
        [Required(ErrorMessage = "The Sale Id is Required")]
        [DisplayName("Sale Id")]
        public Guid SaleId { get; set; }
        [Required(ErrorMessage = "The Amount is Required")]
        [DisplayName("Amount")]
        public decimal Amount { get; set; }
        [DisplayName("Notes")]
        public string Notes { get; set; }
    }
}
