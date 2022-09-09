using Aksaty.Application.Helpers;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;
namespace Aksaty.Application.ViewModels
{
    public abstract class UserBaseViewModel
    {
        [NullableEmailAddress]
        public string Email { get; set; }
        public string UserName { get; set; }
        public string Token { get; set; }
        public string CompanyName { get; set; }
    }
}
