using Aksaty.Application.ViewModels;
using Aksaty.Infra.CrossCutting.Util;
using FluentValidation.Results;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace Aksaty.Application.Interfaces
{
    public interface ISaleAppService
    {
        Task<PagedList<SaleViewModel>> GetAll(GetAllSalesViewModel getAllSalesViewModel);
        Task<SaleViewModel> GetById(GetSaleViewModel saleViewModel);
        SaleViewModel CreateMockSale(AddSaleViewModel SaleViewModel);
        Task<ValidationResult> Create(SaleViewModel SaleViewModel); 
         Task<ValidationResult> Update(SaleViewModel SaleViewModel);
        Task<ValidationResult> Remove(Guid id);

    }
}
