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
    public class ProductRepository : IProductRepository
    {
        private readonly AksatyContext _db;
        private readonly DbSet<Product> _dbSet;
        public ProductRepository(AksatyContext db)
        {
            _db = db;
            _dbSet = db.Products;
        }
        public IUnitOfWork UnitOfWork => _db;

        public void Add(Product product)
        {
            _dbSet.Add(product);
        }

        public async Task<PagedList<Product>> GetAll(GetAllProductsQuery queryParams)
        {
            var query = _dbSet.AsNoTracking().Where(p=>
            p.Deleted==queryParams.Deleted&&
            p.ShowOnWebsite==queryParams.ShowOnWebsite&&
            p.CreatedById==queryParams.CreatedById&&
            p.TanentId==queryParams.TanentId).AsQueryable();
            query = query.Include(p => p.Image);
            if (queryParams.IncludeSales.HasValue&&queryParams.IncludeSales.Value) query = query.Include("Sales");
            if (!string.IsNullOrEmpty(queryParams.OrderBy))
            {
                query = query.OrderByDynamic(queryParams.OrderBy);
            }
            else
            {
                query = query.OrderByDescending(p => p.Id);
            }
            if (queryParams.MinAmount.HasValue) query = query.Where(p => p.Amount >= queryParams.MinAmount);
            if (queryParams.MaxAmount.HasValue) query = query.Where(p => p.Amount <= queryParams.MaxAmount);

            if (queryParams.CreatedAtFrom.HasValue) query = query.Where(p => p.CreatedAt >= queryParams.CreatedAtFrom.Value);
            if (queryParams.CreatedAtTo.HasValue) query = query.Where(p => p.CreatedAt <= queryParams.CreatedAtTo.Value);

            if (!string.IsNullOrEmpty(queryParams.SearchQuery)) 
            {
                queryParams.SearchQuery = queryParams.SearchQuery.Trim().ToLower();
                query = query.Where(p => p.Name.ToLower().Contains(queryParams.SearchQuery) || p.Category.ToLower().Contains(queryParams.SearchQuery));
            }
            var pagedList = new PagedList<Product>(query.Count(), queryParams.PageNumber.Value, queryParams.PageSize.Value);
            await pagedList.CreateListAsync(query);
            return pagedList;
        }
        public async Task<Product> GetById(Guid id)
        {
            return await _dbSet.Include(p=>p.Image).FirstOrDefaultAsync(p => p.Id == id);
        }
        public async Task<Product> GetById(GetProductQuery queryParam)
        {
            var query = _dbSet.AsNoTracking().AsQueryable();
            query = query.Include(p => p.Image);
            if (queryParam.IncludeSales) query = query.Include(sp=>sp.SalesProducts);
            return await query.FirstOrDefaultAsync(p=>p.Id==queryParam.Id);
        }
        public void Remove(Product product)
        {
            _dbSet.Remove(product);
        }

        public void Update(Product product)
        {
            _dbSet.Update(product);
        }
        /// <summary>
        /// Diosposes of db
        /// </summary>
        public void Dispose()
        {
            _db.Dispose();
        }

    }
}
