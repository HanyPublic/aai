using NetDevPack.Messaging;
using System;

namespace Aksaty.Domain.Events
{
    public class SaleInstallmentRemovedEvent:Event
    {
        public Guid Id { get; set; }
        public SaleInstallmentRemovedEvent(Guid id)
        {
            Id = id;
            AggregateId = id;
        }
    }
}
