using Aksaty.Domain.Models;
using System;
using System.Collections.Generic;
using System.Text;

namespace Aksaty.Application.ViewModels
{
    public class AddProductViewModel:BaseEntityViewModel
    {
        public string ImageId { get; set; }
        public string ImageUrl { get; set; }
        public string Name { get; set; }
        public decimal Amount { get; set; }
        public string Category { get; set; }
    }
}
