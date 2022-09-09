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
    /// <summary>
    /// Tanent Repository
    /// Communicates with database
    /// </summary>
    public class TanentRepository:ITanentRepository
    {
        private readonly AksatyContext _db;
        private readonly DbSet<Tanent> _dbset;
        public TanentRepository(AksatyContext db)
        {
            _db = db;
            _dbset = db.Tanents;
        }
        public IUnitOfWork UnitOfWork => _db;
        /// <summary>
        /// Get all tanents
        /// </summary>
        /// <returns></returns>
        public async Task<PagedList<Tanent>> GetAll(GetAllTanentsQuery queryParams)
        {
            var query = _dbset.AsNoTracking().AsQueryable();
            query = query.Include(t => t.Image);
            if (string.IsNullOrEmpty(queryParams.OrderBy))
            {
                query = query.OrderByDescending(s => s.Id);
            }
            else
            {
                query = query.OrderByDynamic(queryParams.OrderBy);
            }

            if (queryParams.MinMonthCount.HasValue) query = query.Where(s => s.MonthCount >= queryParams.MinMonthCount);
            if (queryParams.MaxMonthCount.HasValue) query = query.Where(s => s.MonthCount <= queryParams.MaxMonthCount);

            if (queryParams.MinPerecntage.HasValue) query = query.Where(s => s.Perecntage >= queryParams.MinPerecntage);
            if (queryParams.MaxPerecntage.HasValue) query = query.Where(s => s.Perecntage <= queryParams.MaxPerecntage);

            if (!string.IsNullOrEmpty(queryParams.SearchQuery))
            {
                queryParams.SearchQuery = queryParams.SearchQuery.Trim().ToLower();
                query = query.Where(s =>
                s.Address.ToLower().Contains(queryParams.SearchQuery)||
                s.Colors.ToLower().Contains(queryParams.SearchQuery)||
                s.Currency.ToLower().Contains(queryParams.SearchQuery)||
                s.Email.ToLower().Contains(queryParams.SearchQuery)||
                s.Mobile.ToLower().Contains(queryParams.SearchQuery) ||
                s.Name.ToLower().Contains(queryParams.SearchQuery) ||
                s.Note.ToLower().Contains(queryParams.SearchQuery) ||
                s.SignatureArray.ToLower().Contains(queryParams.SearchQuery)
                );
            }
            var pagedList = new PagedList<Tanent>(query.Count(), queryParams.PageNumber.Value, queryParams.PageSize.Value);
            await pagedList.CreateListAsync(query);
            return pagedList;
        }
        /// <summary>
        /// Get tanent by Id
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public async Task<Tanent> GetByUserId(string userId)
        {
            return await _dbset.Include(t => t.Image).FirstOrDefaultAsync(s=>s.UserId==userId);
        }
        /// <summary>
        /// Adds new tanent
        /// </summary>
        /// <param name="Tanent"></param>
        public void Add(Tanent Tanent)
        {
            _dbset.Add(Tanent);
        }
        /// <summary>
        /// Updates exisitng tanent
        /// </summary>
        /// <param name="Tanent"></param>
        public void Update(Tanent Tanent)
        {
            _dbset.Update(Tanent);
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
