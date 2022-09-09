using System;
using FluentValidation.Results;
using System.Threading.Tasks;
using Aksaty.Infra.CrossCutting.Util;
using Aksaty.Application.ViewModels;

namespace Aksaty.Application.Interfaces
{
    public interface ISaleInstallmentAppService
    {
        Task<PagedList<SaleInstallmentViewModel>> GetAll(GetAllSaleInstallmentViewModel getAllSaleInstallmentViewModel);
        Task<SaleInstallmentViewModel> GetById(GetSaleInstallmentViewModel getSaleInstallmentViewModel);
        Task<ValidationResult> Add(AddSaleInstallmentViewModel SaleInstallmentViewModel);
        Task<ValidationResult> Update(SaleInstallmentViewModel SaleInstallmentViewModel); 
        Task<ValidationResult> UpdateStatus(SaleInstallmentViewModel SaleInstallmentViewModel); 
         Task<ValidationResult> Remove(Guid id);
    }
}
