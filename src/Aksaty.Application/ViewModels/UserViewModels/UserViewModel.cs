using System;
using System.Collections.Generic;
using System.Text;

namespace Aksaty.Application.ViewModels
{
    public class UserViewModel: UserBaseViewModel
    {
        public string Id { get; set; }
   
        public UserViewModel()
        {

        }
        public UserViewModel(string id, string email,string userName,string token,string companyName)
        {
            Id = id;
            Email = email;
            Token = token;
            UserName = userName;
            CompanyName = companyName;
    }
    }
}
