using NetDevPack.Messaging;
using System;
using System.Collections.Generic;
using System.Text;
using Aksaty.Domain.Attachments.Commands.Validations;
using Aksaty.Domain.Attachments.Models;

namespace Aksaty.Domain.Attachments.Events
{
    public class AttachmentAddedEvent : AttachmentEvent
    {
        public AttachmentAddedEvent(
            Guid id,
            string type,
            string description,
            string url,
            string systemFileName,
            string sourceFileName,
            string seoFileName,
            string subFolder,
            string fileExtension,
            int mediaTypeId,
            string thumbUrl,
            string tags,
            string createdById,
            string tanentId,
            DateTime createdAt,
            bool showOnWebsite,
            bool deleted)
        {
            Id = id;
            AggregateId = id;
            Type = type;
            Description = description;
            URL = url;
            SystemFileName = systemFileName;
            SourceFileName = sourceFileName;
            SeoFileName = seoFileName;
            SubFolder = subFolder;
            FileExtension = fileExtension;
            MediaTypeId = mediaTypeId;
            ThumbURL = thumbUrl;
            Tags = tags;
            CreatedById = createdById;
            TanentId = tanentId;
            CreatedAt = createdAt;
            ShowOnWebsite = showOnWebsite;
            Deleted = deleted;
        }
    }
}
