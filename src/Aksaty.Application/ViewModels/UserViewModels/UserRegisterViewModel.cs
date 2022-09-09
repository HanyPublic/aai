using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace Aksaty.Application.ViewModels
{
    public class UserRegisterViewModel:UserBaseViewModel
    {
        [Required]
        [StringLength(100, MinimumLength = 6)]
        public string Password { get; set; }
        [Compare("Password")]
        public string ConfirmPassword { get; set; }
        [Required]
        public string CompanyName { get; set; }
    }
}
