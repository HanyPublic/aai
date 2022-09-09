using Aksaty.Application.ViewModels;
using Microsoft.AspNetCore.Identity;
using System;
using System.Threading.Tasks;

namespace Aksaty.Application.Interfaces
{
    public interface IUserService : IDisposable
    {
        Task<UserViewModel> GetUserByEmailOrUserName(string email);
        Task<string> GetFullJwt(IdentityUser user);
    }
}
