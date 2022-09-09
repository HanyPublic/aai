using Aksaty.Domain.Attachments.Commands.Validations;
using System;
using System.Collections.Generic;
using System.Text;
using Aksaty.Domain.Attachments.Models;

namespace Aksaty.Domain.Attachments.Commands
{
    public class AddAttachmentCommand : AttachmentCommand
    {
        public AddAttachmentCommand(
            Guid id,
            string description,
            string systemFileName,
            string sourceFileName,
            string fileExtension,
            string createdById,
            string tanentId, 
            DateTime createdAt,
            bool showOnWebsite, 
            bool deleted)
        {
            Id = id;
            AggregateId = id;
            Description = description;
            SystemFileName = systemFileName;
            SourceFileName = sourceFileName;
            FileExtension = fileExtension;
            CreatedById = createdById;
            TanentId = tanentId;
            CreatedAt = createdAt;
            ShowOnWebsite = showOnWebsite;
            Deleted = deleted;
        }
        public override bool IsValid()
        {
            ValidationResult = new AddAttachmentCommandValidation().Validate(this);
            return base.IsValid();
        }
    }
}
