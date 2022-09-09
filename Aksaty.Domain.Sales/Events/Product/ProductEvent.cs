using Aksaty.Infra.CrossCutting.Util;
using NetDevPack.Messaging;
using System;
using System.Collections.Generic;
using System.Text;

namespace Aksaty.Domain.Events
{
   public abstract class ProductEvent:BaseEntityEvent
    {
        public Guid Id { get; set; }
        public Guid? ImageId { get; set; }
        public string Name { get; set; }
        public decimal Amount { get; set; }
        public string Category { get; set; }
    }
}
