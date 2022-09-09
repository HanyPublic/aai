using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace Aksaty.Application.ViewModels
{
    public class GetProductViewModel
    {
        [Required]
        public Guid Id { get; set; }
        public bool? IncludeSales { get; set; } = false;
    }
}
