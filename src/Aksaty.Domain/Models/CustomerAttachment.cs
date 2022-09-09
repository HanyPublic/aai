using Aksaty.Domain.Attachments.Models;
using Aksaty.Infra.CrossCutting.Util;
using NetDevPack.Domain;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Text;

namespace Aksaty.Domain.Models
{
    public class CustomerAttachment : Entity, IAggregateRoot
    {
        public Guid? AttachmentId { get; set; }
        [ForeignKey("AttachmentId")]
        public Attachment Attachment { get; set; }
        public Guid? CustomerId { get; set; }
        [ForeignKey("CustomerId")]
        public Customer Customer { get; set; }
        public static CustomerAttachment GetCustomerAttachment(Guid attachmentId, Guid customerId)
        {
            return new CustomerAttachment()
            {
                AttachmentId = attachmentId,
                CustomerId = customerId
            };
        }
    }
}
