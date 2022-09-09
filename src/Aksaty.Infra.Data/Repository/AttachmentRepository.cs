using Aksaty.Domain.Attachments.Interfaces;
using Aksaty.Domain.Attachments.Models;
using Aksaty.Domain.Attachments.Queries;
using Aksaty.Infra.Data.Context;
using Microsoft.EntityFrameworkCore;
using NetDevPack.Data;
using System;
using System.Linq;
using System.Threading.Tasks;
using Aksaty.Infra.CrossCutting.Util;

namespace Aksaty.Infra.Data.Repository
{
    public class AttachmentRepository : IAttachmentRepository
    {
        private readonly AksatyContext _Db;
        private readonly DbSet<Attachment> _DbSet;
        public AttachmentRepository(AksatyContext db)
        {
            _Db = db;
            _DbSet = db.Attachments;
        }
        public IUnitOfWork UnitOfWork => _Db;

        public void Add(Attachment attachment)
        {
            _DbSet.Add(attachment);
        }

        public void Update(Attachment attachment)
        {
            _DbSet.Update(attachment);
        }

        public async Task<PagedList<Attachment>> GetAll(GetAllAttachmentsQuery resourceParams)

        {
            try
            {
                var query = _DbSet.AsNoTracking().Where(a => a.Deleted == resourceParams.Deleted&&a.ShowOnWebsite==resourceParams.ShowOnWebsite).AsQueryable();
                if (!string.IsNullOrEmpty(resourceParams.OrderBy))
                {
                    query= query.OrderByDynamic(resourceParams.OrderBy);
                }
                else
                {
                    query = query.OrderByDescending(a => a.CreatedAt);
                }
                if (!string.IsNullOrEmpty(resourceParams.CreatedById)) query = query.Where(a => a.CreatedById==resourceParams.CreatedById); 
                if (!string.IsNullOrEmpty(resourceParams.TanentId)) query = query.Where(a => a.TanentId== resourceParams.TanentId);

                if (!string.IsNullOrEmpty(resourceParams.SearchQuery))
                {
                    resourceParams.SearchQuery = resourceParams.SearchQuery.ToLowerInvariant().Trim();
                    query = query.Where(a =>
                    a.Description.ToLower().Contains(resourceParams.SearchQuery) ||
                    a.FileExtension.ToLower().Contains(resourceParams.SearchQuery) ||
                    a.SeoFileName.ToLower().Contains(resourceParams.SearchQuery) ||
                    a.SourceFileName.ToLower().Contains(resourceParams.SearchQuery) ||
                    a.SystemFileName.ToLower().Contains(resourceParams.SearchQuery) ||
                    a.Tags.ToLower().Contains(resourceParams.SearchQuery) ||
                    a.Type.ToLower().Contains(resourceParams.SearchQuery));
                }
                var pagedList=new PagedList<Attachment>(query.Count(),resourceParams.PageNumber.Value, resourceParams.PageSize.Value);
                await pagedList.CreateListAsync(query);
                return pagedList;
            }
            catch (Exception ex)
            {
                throw ex;
            }
           
        }
        public async Task<Attachment> GetById(Guid Id)
        {
            return await _DbSet.FindAsync(Id);
        }

        public void Remove(Attachment attachment)
        {
            _DbSet.Remove(attachment);
        }

        public void Dispose()
        {
            _Db.Dispose();
        }
    }
}
