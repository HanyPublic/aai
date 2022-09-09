using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using Aksaty.Application.EventSourcedNormalizers;
using Aksaty.Application.ViewModels;
using Aksaty.Infra.CrossCutting.Util;
using FluentValidation.Results;

namespace Aksaty.Application.Interfaces
{
    public interface ICustomerAppService : IDisposable
    {
        Task<PagedList<CustomerViewModel>> GetAll(GetAllCustomersViewModel getAllCustomersViewModel);
        Task<CustomerViewModel> GetById(Guid id);
        Task<ValidationResult> Register(CustomerRegisterViewModel customerViewModel);
        /// <summary>
        /// Updates all customer fields except balance and installment
        /// </summary>
        /// <param name="customerViewModel"></param>
        /// <returns></returns>
        Task<ValidationResult> Update(CustomerViewModel customerViewModel);
        /// <summary>
        /// Updates all customer balance and installment
        /// </summary>
        /// <param name="customerUpdateViewModel"></param>
        /// <returns></returns>
        Task<ValidationResult> Update(CustomerSalesUpdateViewModel customerUpdateViewModel);
        Task<ValidationResult> Remove(Guid id);
        Task<IList<CustomerHistoryData>> GetAllHistory(Guid id);
    }
}
