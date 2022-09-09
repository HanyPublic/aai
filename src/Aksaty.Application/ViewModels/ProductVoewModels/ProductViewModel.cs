using Aksaty.Domain.Models;
using System;
using System.Collections.Generic;
using System.Text;

namespace Aksaty.Application.ViewModels
{
    public class ProductViewModel:AddProductViewModel
    {
        public Guid Id { get; set; }
    }
}
