using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using Aksaty.Domain.Interfaces;
using Aksaty.Domain.Models;
using Aksaty.Infra.Data.Context;
using Microsoft.EntityFrameworkCore;
using NetDevPack.Data;
using Aksaty.Domain.Queries;
using System.Linq;
using Aksaty.Infra.CrossCutting.Util;

namespace Aksaty.Infra.Data.Repository
{
    public class CustomerRepository : ICustomerRepository
    {
        protected readonly AksatyContext Db;
        protected readonly DbSet<Customer> DbSet;

        public CustomerRepository(AksatyContext context)
        {
            Db = context;
            DbSet = Db.Set<Customer>();
        }

        public IUnitOfWork UnitOfWork => Db;

        public async Task<Customer> GetById(Guid id)
        {
            var customer= await DbSet.Include(c => c.Image).Include(c => c.Attachments).ThenInclude(c => c.Attachment).FirstOrDefaultAsync(c => c.Id == id);
            return customer;
        }

        public async Task<PagedList<Customer>> GetAll(GetAllCustomersQuery queryParams)
        {
            var query = DbSet.AsNoTracking().Where(c =>
            c.Deleted == queryParams.Deleted &&
            c.CreatedById == queryParams.CreatedById &&
            c.TanentId == queryParams.TanentId &&
            c.ShowOnWebsite == queryParams.ShowOnWebsite).AsQueryable();
            query = query.Include(c => c.Image);
            if (string.IsNullOrEmpty(queryParams.OrderBy))
            {
                query = query.OrderByDescending(c => c.Id);
            }
            else
            {
                query = query.OrderByDynamic(queryParams.OrderBy);
            }

            if (queryParams.IncludeAttachments) query = query.Include(c=>c.Attachments).ThenInclude(c=>c.Attachment);
            if (queryParams.MinBirthDate.HasValue) query = query.Where(c => c.BirthDate >= queryParams.MinBirthDate.Value);
            if (queryParams.MaxBirthDate.HasValue) query = query.Where(c => c.BirthDate <= queryParams.MaxBirthDate.Value);

            if (queryParams.MinNextInstallDate.HasValue) query = query.Where(c => c.NextInstallDate >= queryParams.MinNextInstallDate.Value);
            if (queryParams.MaxNextInstallDate.HasValue) query = query.Where(c => c.NextInstallDate <= queryParams.MaxNextInstallDate.Value);

            if (queryParams.MinBalance.HasValue) query = query.Where(c => c.Balance >= queryParams.MinBalance.Value);
            if (queryParams.MaxBalance.HasValue) query = query.Where(c => c.Balance <= queryParams.MaxBalance.Value);

            if (!string.IsNullOrEmpty(queryParams.SearchQuery))
            {
                queryParams.SearchQuery = queryParams.SearchQuery.Trim().ToLower();
                query = query.Where(c =>
                  c.AddRecription.ToLower().Contains(queryParams.SearchQuery) ||
                  c.Address.ToLower().Contains(queryParams.SearchQuery) ||
                  c.Email.ToLower().Contains(queryParams.SearchQuery) ||
                  c.Mobile.ToLower().Contains(queryParams.SearchQuery) ||
                  c.Mobile2.ToLower().Contains(queryParams.SearchQuery) ||
                  c.Name.ToLower().Contains(queryParams.SearchQuery) ||
                  c.Type.ToLower().Contains(queryParams.SearchQuery));
            }
            var pagedList = new PagedList<Customer>(query.Count(), queryParams.PageNumber.Value, queryParams.PageSize.Value);
            await pagedList.CreateListAsync(query);
            return pagedList;
        }

        public async Task<Customer> GetByEmail(GetByEmailQuery query)
        {
            return await DbSet.Include(c => c.Image).Include(c => c.Attachments).ThenInclude(c => c.Attachment).AsNoTracking()
                .Where(c => c.Deleted == query.Deleted &&
                c.CreatedById == query.CreatedById &&
                c.TanentId == query.TanentId &&
                c.ShowOnWebsite == query.ShowOnWebsite)
                .FirstOrDefaultAsync(c => c.Email.ToLower().Contains(query.Email.ToLower()));
        }

        public void Add(Customer customer)
        {
            DbSet.Add(customer);
        }

        public void Update(Customer customer)
        {
            DbSet.Update(customer);
        }
        public void RemoveAttachments(IEnumerable<CustomerAttachment> attachments)
        {
            Db.CustomerAttachments.RemoveRange(attachments);
        }
        public async Task  AddAttachments(IEnumerable<CustomerAttachment> attachments)
        {
           await Db.CustomerAttachments.AddRangeAsync(attachments);
        }
        public void Remove(Customer customer)
        {
            DbSet.Remove(customer);
        }

        public void Dispose()
        {
            Db.Dispose();
        }
    }
}
