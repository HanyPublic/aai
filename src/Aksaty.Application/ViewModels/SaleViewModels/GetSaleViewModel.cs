using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace Aksaty.Application.ViewModels
{
    public class GetSaleViewModel
    {
        [Required]
        public Guid Id { get; set; }
        public bool? IncludeSaleInstallments { get; set; } = false;
        public bool? IncludeCustomers { get; set; } = false;
        public bool? IncludeProducts { get; set; } = false;
        public GetSaleViewModel(Guid id,bool includeProducts, bool includeSaleInstallments, bool includeCustomers)
        {
            Id = id;
            IncludeProducts = includeProducts;
            IncludeSaleInstallments = includeSaleInstallments;
            IncludeCustomers = includeCustomers;
        }
        public GetSaleViewModel()
        {

        }
    }
}
