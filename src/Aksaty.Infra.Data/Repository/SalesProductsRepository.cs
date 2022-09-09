using Aksaty.Domain.Interfaces;
using Aksaty.Domain.Models;
using Aksaty.Infra.Data.Context;
using Microsoft.EntityFrameworkCore;
using NetDevPack.Data;
using System;
using System.Collections.Generic;
using System.Text;

namespace Aksaty.Infra.Data.Repository
{
    public class SalesProductsRepository : ISalesProductsRepository
    {
        private readonly AksatyContext _db;
        private readonly DbSet<SalesProducts> _dbSet;
        public SalesProductsRepository(AksatyContext db)
        {
            _db = db;
            _dbSet = db.SalesProducts;
        }
        public IUnitOfWork UnitOfWork => _db;

        public void Dispose()
        {
            _db.Dispose();
        }

        public void Remove(SalesProducts salesProducts)
        {
            _dbSet.Remove(salesProducts);
        }
    }
}
