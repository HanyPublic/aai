using Aksaty.Application.ViewModels;
using Aksaty.Domain.Models;
using System;
using System.Collections.Generic;
using FluentValidation.Results;
using System.Text;
using System.Threading.Tasks;
using Aksaty.Infra.CrossCutting.Util;

namespace Aksaty.Application.Interfaces
{
    public interface ITanentAppService : IDisposable
    {
        Task<TanentViewModel> GetByUserId(string id);
        Task<ValidationResult> AddUpdate(AddTanentViewModel tanentViewModel);
    }
}
