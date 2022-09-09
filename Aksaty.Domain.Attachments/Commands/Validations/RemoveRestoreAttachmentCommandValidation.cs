using Aksaty.Domain.Attachments.Commands;
using System;
using System.Collections.Generic;
using System.Text;

namespace Aksaty.Domain.Attachments.Commands.Validations
{
    public class RemoveRestoreAttachmentCommandValidation:AttachmentCommandValidation<AttachmentCommand>
    {
        public RemoveRestoreAttachmentCommandValidation()
        {
            ValidateId();
        }
    }
}
