using Aksaty.Domain.Attachments.Models;
using System;
using System.Collections.Generic;
using System.Text;
using NetDevPack.Data;
using System.Threading.Tasks;
using Aksaty.Infra.CrossCutting.Util;
using Aksaty.Domain.Attachments.Queries;
namespace Aksaty.Domain.Attachments.Interfaces
{
    public interface IAttachmentRepository: IRepository<Attachment>
    {
        Task<Attachment> GetById(Guid id);
        Task<PagedList<Attachment>> GetAll(GetAllAttachmentsQuery resourceParams);
        void Add(Attachment attachment);
        void Update(Attachment attachment);
        void Remove(Attachment attachment);

    }
}
