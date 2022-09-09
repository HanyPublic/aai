using Microsoft.AspNetCore.Identity;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace Aksaty.Application.ViewModels
{
    public class TanentViewModel:AddTanentViewModel
    {
        public Guid? Id { get; set; }=Guid.Empty;
        public IdentityUser User { get; set; }
        public TanentViewModel()
        {

        }
        public TanentViewModel(string name,string userId)
        {
            Name = name;
            UserId = userId;
        }
    }
}
