using Aksaty.Domain.Attachments.Commands.Validations;
using NetDevPack.Messaging;
using System;
using System.Collections.Generic;
using System.Text;
namespace Aksaty.Domain.Attachments.Commands
{
    public class RemoveRestoreAttachmentCommand : AttachmentCommand
    {
        public bool Delete { get; set; }
        public RemoveRestoreAttachmentCommand(
            Guid id,
            bool delete)
        {
            Id = id;
            AggregateId = id;
            Delete = delete;
        }
        public override bool IsValid()
        {
            ValidationResult = new RemoveRestoreAttachmentCommandValidation().Validate(this);
            return base.IsValid();
        }

    }
}
