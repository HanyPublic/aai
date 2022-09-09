using Aksaty.Infra.CrossCutting.Util;
using NetDevPack.Messaging;
using System;
using System.Collections.Generic;
using System.Text;

namespace Aksaty.Domain.Attachments.Events
{
    public class AttachmentRestoredEvent: BaseEntityEvent
    {
        public Guid Id { get; set; }
        public bool Delete { get; set; }
        public AttachmentRestoredEvent(
            Guid id,
            string createdById,
            string tanentId,
            DateTime createdAt,
            bool showOnWebsite,
            bool deleted,
            bool delete)
        {
            Id = id;
            AggregateId = id;
            CreatedById = createdById;
            TanentId = tanentId;
            CreatedAt = createdAt;
            ShowOnWebsite = showOnWebsite;
            Deleted = deleted;
            Delete = delete;
        }
    }
}
