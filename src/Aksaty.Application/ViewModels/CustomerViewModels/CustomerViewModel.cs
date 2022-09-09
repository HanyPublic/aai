using System;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;

namespace Aksaty.Application.ViewModels
{
    public class CustomerViewModel:CustomerRegisterViewModel
    {
        [Key]
        public Guid Id { get; set; }

    }
}
