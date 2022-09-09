using Aksaty.Domain.Attachments.Models;
using Aksaty.Domain.Models;
using Aksaty.Infra.CrossCutting.Util;
using NetDevPack.Messaging;
using System;
using System.Collections.Generic;
using System.Text;

namespace Aksaty.Domain.Customer.Events
{
    public abstract class CustomerEvent: BaseEntityEvent
    {
        public Guid Id { get; protected set; }
        public string NationalId { get; protected set; }
        public string RefId { get; protected set; }
        public string Notes { get; protected set; }
        public string Review { get; protected set; }
        public Guid? ImageId { get; protected set; }
        public string Name { get; protected set; }
        public string Email { get; protected set; }
        public DateTime BirthDate { get; protected set; }
        public string Mobile { get; protected set; }
        public string Mobile2 { get; protected set; }
        public string Address { get; protected set; }
        public string Type { get; protected set; }
        public string AddRecription { get; protected set; }
    }
}
