using Aksaty.Domain.Models;
using Aksaty.Domain.Queries;
using Aksaty.Infra.CrossCutting.Util;
using NetDevPack.Data;
using System;
using System.Collections.Generic;
using System.Linq.Expressions;
using System.Threading.Tasks;

namespace Aksaty.Domain.Interfaces
{
    public interface ISaleInstallmentRepository : IRepository<SaleInstallment>
    {
        Task<PagedList<SaleInstallment>> GetAll(GetAllSaleInstallmentQuery query);
        Task<List<SaleInstallment>> GetAllList(GetAllSaleInstallmentQuery query, Expression<Func<SaleInstallment, bool>> exp=null);
        Task<SaleInstallment> GetById(Guid Id,bool? includeSale);
        void Add(SaleInstallment saleInstallment);
        void Update(SaleInstallment saleInstallment);
        void Remove(SaleInstallment saleInstallment);
        void DetachEntity(SaleInstallment saleInstallment);
    }
}
