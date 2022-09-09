using Aksaty.Domain.Attachments.Models;
using Aksaty.Infra.CrossCutting.Util;
using MediatR;
using System;
using System.Collections.Generic;
using System.Text;

namespace Aksaty.Domain.Attachments.Queries
{
    public class GetAllAttachmentsQuery : BaseQuery, IRequest<PagedList<Attachment>>
    {
        public Guid? EntityId { get; set; }
        public string EntityType { get; set; }

        public GetAllAttachmentsQuery( string createdById, string tanentId, DateTime? createdAtFrom,DateTime?createdAtTo, bool? showOnWebsite, bool? deleted)
        {
            CreatedById = createdById;
            TanentId = tanentId;
            CreatedAtFrom = createdAtFrom;
            CreatedAtTo = createdAtTo;
            ShowOnWebsite = showOnWebsite;
            Deleted = deleted;
        }
    }
}
