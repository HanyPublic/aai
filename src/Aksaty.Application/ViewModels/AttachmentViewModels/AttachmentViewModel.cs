using Aksaty.Domain.Attachments.Models;
using Aksaty.Domain.Models;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace Aksaty.Application.ViewModels
{
    public class AttachmentViewModel : AttachmentViewModelBase
    {
        [Key]
        public Guid Id { get; set; }
        public static AttachmentViewModel fromCustomerAttachment(CustomerAttachment customerAttachment)
        {
            return new AttachmentViewModel()
            {
                Id = customerAttachment.Id,
                FileName = customerAttachment.Attachment.SystemFileName,
                SourceFileName = customerAttachment.Attachment.SourceFileName,
                FileExtension = customerAttachment.Attachment.FileExtension,
                Url = customerAttachment.Attachment.URL
            };
}
    }
}
