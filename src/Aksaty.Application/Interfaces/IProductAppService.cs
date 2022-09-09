using Aksaty.Application.ViewModels;
using Aksaty.Infra.CrossCutting.Util;
using FluentValidation.Results;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace Aksaty.Application.Interfaces
{
    public interface IProductAppService
    {
        Task<PagedList<ProductViewModel>> GetAll(GetAllProductsViewModel getAllSalesViewModel);
        Task<ProductViewModel> GetById(GetProductViewModel getProductViewModel);
        Task<ValidationResult> Add(AddProductViewModel SaleViewModel);
        Task<ValidationResult> Update(ProductViewModel SaleViewModel);
        Task<ValidationResult> Remove(Guid id);
    }
}
