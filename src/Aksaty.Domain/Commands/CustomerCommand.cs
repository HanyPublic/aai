using System;
using System.Collections.Generic;
using Aksaty.Domain.Models;
using Aksaty.Infra.CrossCutting.Util;
using NetDevPack.Messaging;

namespace Aksaty.Domain.Commands
{
    public abstract class CustomerCommand : BaseEntityCommand
    {
        public Guid Id { get; protected set; }
        public Guid? ImageId { get; protected set; }
        public string NationalId { get; set; }
        public string RefId { get; set; }
        public string Notes { get; set; }
        public string Review { get; set; }
        public string Name { get; protected set; }
        public string Email { get; protected set; }
        public DateTime BirthDate { get; protected set; }
        public string Mobile { get; protected set; }
        public string Mobile2 { get; protected set; }
        public string Address { get; protected set; }
        public string Type { get; protected set; }
        public string AddRecription { get; protected set; }
        public decimal Balance { get; protected set; }
        public DateTime NextInstallDate { get; protected set; }
        public List<CustomerAttachment> Attachments { get; protected set; }
    }
}