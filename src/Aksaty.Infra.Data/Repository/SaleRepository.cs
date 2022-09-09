using Aksaty.Domain.Interfaces;
using Aksaty.Domain.Models;
using Aksaty.Domain.Queries;
using Aksaty.Infra.CrossCutting.Util;
using Aksaty.Infra.Data.Context;
using Microsoft.EntityFrameworkCore;
using NetDevPack.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Aksaty.Infra.Data.Repository
{
    public class SaleRepository : ISaleRepository
    {
        protected readonly AksatyContext Db;
        protected readonly DbSet<Sale> DbSet;

        public SaleRepository(AksatyContext context)
        {
            Db = context;
            DbSet = Db.Sales;
        }
        public IUnitOfWork UnitOfWork => Db;

        public void Add(Sale Sale)
        {
            DbSet.Add(Sale);

        }

        public Sale Create(Sale sale)
        {
            DbSet.Add(sale);
            return sale;
        }
       

        public async Task<PagedList<Sale>> GetAll(GetAllSalesQuery queryParams)
        {
            var query = DbSet.AsNoTracking().Where(s=>
            s.Deleted==queryParams.Deleted&&
            s.ShowOnWebsite==queryParams.ShowOnWebsite&&
            s.TanentId==queryParams.TanentId&&
            s.CreatedById==queryParams.CreatedById).AsQueryable();
            if (queryParams.IncludeSaleInstallments.HasValue&&queryParams.IncludeSaleInstallments.Value) query = query.Include(s=>s.SaleInstallments);
            if (queryParams.IncludeProducts.HasValue&&queryParams.IncludeProducts.Value) query = query.Include(s=>s.SalesProducts).ThenInclude(sp=>sp.Product);

            if (queryParams.IncludeCustomers.HasValue&&queryParams.IncludeCustomers.Value) query = query.Include(s=>s.Customer);

            if (queryParams.CustomerId!=Guid.Empty)
            {
                query = query.Where(s=>s.CustomerId==queryParams.CustomerId);
            }

            if (!string.IsNullOrEmpty(queryParams.OrderBy))
            {
                query = query.OrderByDynamic(queryParams.OrderBy);
            }

            else
            {
                query=query.OrderByDescending(s => s.Id);
            }

            if (queryParams.MaxAmount.HasValue) query = query.Where(s => s.Amount <= queryParams.MaxAmount.Value);
            if (queryParams.MinAmount.HasValue) query = query.Where(s => s.Amount >= queryParams.MinAmount.Value);

            if (queryParams.MaxPaidAmount.HasValue) query = query.Where(s => s.PaidAmount <= queryParams.MaxPaidAmount.Value);
            if (queryParams.MaxPaidAmount.HasValue) query = query.Where(s => s.PaidAmount >= queryParams.MinPaidAmount.Value);

            if (queryParams.MaxRemainingAmount.HasValue) query = query.Where(s => s.RemainingAmount <= queryParams.MaxRemainingAmount.Value);
            if (queryParams.MinRemainingAmount.HasValue) query = query.Where(s => s.RemainingAmount >= queryParams.MinRemainingAmount.Value);

            if (queryParams.MaxInstallmentMonthNumber.HasValue) query = query.Where(s => s.InstallmentMonthNumber <= queryParams.MaxInstallmentMonthNumber.Value);
            if (queryParams.MinInstallmentMonthNumber.HasValue) query = query.Where(s => s.InstallmentMonthNumber >= queryParams.MinInstallmentMonthNumber.Value);

            if (queryParams.MaxInstallmentValue.HasValue) query = query.Where(s => s.InstallmentValue <= queryParams.MaxInstallmentValue.Value);
            if (queryParams.MinInstallmentValue.HasValue) query = query.Where(s => s.InstallmentValue >= queryParams.MinInstallmentValue.Value);

            if (queryParams.MaxStartDate.HasValue) query = query.Where(s => s.StartDate <= queryParams.MaxStartDate);
            if (queryParams.MinStartDate.HasValue) query = query.Where(s => s.StartDate >= queryParams.MinStartDate);


            if (queryParams.CreatedAtTo.HasValue) query = query.Where(s => s.CreatedAt <= queryParams.CreatedAtTo);
            if (queryParams.CreatedAtFrom.HasValue) query = query.Where(s => s.StartDate >= queryParams.CreatedAtFrom);

            if (!string.IsNullOrEmpty(queryParams.SearchQuery))
            {
                queryParams.SearchQuery = queryParams.SearchQuery.Trim().ToLower();
                query = query.Where(s => s.Status.ToLower().Contains(queryParams.SearchQuery));
            }
            var pagedList = new PagedList<Sale>(query.Count(), queryParams.PageNumber.Value, queryParams.PageSize.Value);
            await pagedList.CreateListAsync(query);
            return pagedList;
        }

        public async Task<Sale> GetById(Guid id,bool includeProducts,bool includeSaleInstallments, bool includeCustomers)
        {
            var query =DbSet.AsQueryable();
            if (includeProducts) query = query.Include(p=>p.SalesProducts).ThenInclude(sp => sp.Product);
            if (includeSaleInstallments) query = query.Include(s=>s.SaleInstallments);
            if (includeCustomers) query = query.Include(s => s.Customer);
            return await query.FirstOrDefaultAsync(s=>s.Id==id);
        }
        public async Task<Sale> GetById(Guid Id)
        {
            return await DbSet.FindAsync(Id);
        }
        public void Remove(Sale Sale)
        {
            DbSet.Remove(Sale);
        }

        public void Update(Sale Sale)
        {
            DbSet.Update(Sale);
        }
        public void Dispose()
        {
            Db.Dispose();
        }
    }
}
