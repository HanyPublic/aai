using NetDevPack.Messaging;
using System;
using System.Collections.Generic;
using System.Text;

namespace Aksaty.Domain.Events
{
    public class ProductRemovedEvent :Event
    {
        public ProductRemovedEvent(Guid id)
        {
            Id = id;
            AggregateId = id;
        }
        public Guid Id { get; set; }
    }
}
