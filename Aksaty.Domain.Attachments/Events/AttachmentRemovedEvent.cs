using Aksaty.Infra.CrossCutting.Util;
using NetDevPack.Messaging;
using System;
using System.Collections.Generic;
using System.Text;

namespace Aksaty.Domain.Attachments.Events
{
    public class AttachmentRemovedEvent: BaseEntityEvent
    {
        public Guid Id { get; set; }
        public bool Delete { get; set; }
        public AttachmentRemovedEvent(
            Guid id,
            string createdById,
            string tanentId,
            DateTime createdAt,
            bool showOnWebsite,
            bool delete,
            bool deleted)
        {
            Id = id;
            AggregateId = id;
            Deleted = deleted;
            CreatedById = createdById;
            TanentId = tanentId;
            CreatedAt = createdAt;
            ShowOnWebsite = showOnWebsite;
            Delete = delete;
            Deleted = deleted;
        }
    }
}
