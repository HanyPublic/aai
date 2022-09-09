using System;
using NetDevPack.Messaging;

namespace Aksaty.Domain.Events
{
    public class TanentRemovedEvent : Event
    {
        public TanentRemovedEvent(Guid id)
        {
            Id = id;
            AggregateId = id;
        }

        public Guid Id { get; set; }
    }
}