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
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;

namespace Aksaty.Infra.Data.Repository
{
    public class SaleInstallmentRepository : ISaleInstallmentRepository
    {
        private readonly AksatyContext _db;
        private readonly DbSet<SaleInstallment> _dbSet;
        public SaleInstallmentRepository(AksatyContext db)
        {
            _db = db;
            _dbSet = _db.SaleInstallments;
        }
        public IUnitOfWork UnitOfWork => _db;
        public async Task<PagedList<SaleInstallment>> GetAll(GetAllSaleInstallmentQuery queryParams)
        {
            var query = GetAllQuery(queryParams);
            var pagedList = new PagedList<SaleInstallment>(query.Count(), queryParams.PageNumber.Value, queryParams.PageSize.Value);
            await pagedList.CreateListAsync(query);
            return pagedList;
        }
        public Task<List<SaleInstallment>> GetAllList(GetAllSaleInstallmentQuery queryParams, Expression<Func<SaleInstallment, bool>> exp = null)
        {
            return GetAllQuery(queryParams, exp).ToListAsync();
        }
        private IQueryable<SaleInstallment> GetAllQuery(GetAllSaleInstallmentQuery queryParams, Expression<Func<SaleInstallment, bool>> exp=null)
        {
            var query = _dbSet.AsNoTracking().Where(s =>
            s.Deleted == queryParams.Deleted &&
            s.ShowOnWebsite == queryParams.ShowOnWebsite &&
            s.TanentId == queryParams.TanentId &&
            s.CreatedById == queryParams.CreatedById).AsQueryable();

            if (queryParams.IncludeSale.HasValue && queryParams.IncludeSale.Value)
            {
                query = query
                    .Include(s => s.Sale)
                    .ThenInclude(s => s.Customer);
            }

            if (!string.IsNullOrEmpty(queryParams.OrderBy))
            {
                query = query.OrderByDynamic(queryParams.OrderBy);
            }
            else
            {
                query = query.OrderBy(i => i.DueDate);
            }
            if (queryParams.SaleId != Guid.Empty) query = query.Where(i => i.SaleId == queryParams.SaleId);
            if (queryParams.IncludeSale.HasValue && queryParams.IncludeSale.Value && queryParams.CustomerId != Guid.Empty) query = query.Where(i => i.Sale.CustomerId == queryParams.CustomerId);
            if (queryParams.MinDueDate.HasValue) query = query.Where(i => i.DueDate.CompareTo(queryParams.MinDueDate.Value) >= 0);
            if (queryParams.MaxDueDate.HasValue) query = query.Where(i => i.DueDate.CompareTo(queryParams.MaxDueDate.Value) <= 0);
            if (queryParams.MinAmount.HasValue) query = query.Where(i => i.Amount >= queryParams.MinAmount.Value);
            if (queryParams.MaxAmount.HasValue) query = query.Where(i => i.Amount <= queryParams.MaxAmount.Value);

            if (queryParams.CreatedAtFrom.HasValue) query = query.Where(i => i.CreatedAt.CompareTo(queryParams.CreatedAtFrom.Value) >= 0);
            if (queryParams.CreatedAtTo.HasValue) query = query.Where(i => i.CreatedAt.CompareTo(queryParams.CreatedAtTo.Value) <= 0);

            if (!string.IsNullOrEmpty(queryParams.SearchQuery))
            {
                queryParams.SearchQuery = queryParams.SearchQuery.Trim().ToLower();
                query = query.Where(i => i.Status.ToLower().Contains(queryParams.SearchQuery));
            }
            if (exp != null) query = query.Where(exp);
            return query;
        }

        public async Task<SaleInstallment> GetById(Guid Id, bool? includeSale)
        {
            return includeSale.HasValue&&includeSale.Value ? await _dbSet.Include(s => s.Sale).ThenInclude(s => s.Customer).FirstOrDefaultAsync(s => s.Id == Id) : await _dbSet.FindAsync(Id);
        }
        public void Add(SaleInstallment saleInstallment)
        {
            _db.SaleInstallments.Add(saleInstallment);
        }
        public void DetachEntity(SaleInstallment saleInstallment)
        {
            _db.Entry(saleInstallment).State = EntityState.Detached;
        }
        public void Update(SaleInstallment saleInstallment)
        {
            _db.SaleInstallments.Update(saleInstallment);
        }

        public void Remove(SaleInstallment saleInstallment)
        {
            _dbSet.Remove(saleInstallment);
        }

        public void Dispose()
        {
            _db.Dispose();
        }


    }
}
