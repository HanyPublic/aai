using Aksaty.Domain.Events;
using NetDevPack.Messaging;
using System;
using System.Collections.Generic;
using System.Text;

namespace Aksaty.Domain.Events
{
    public  class ProductCreatedEvent :ProductEvent
    {
        public ProductCreatedEvent (Guid id,Guid? imageId,string name,decimal amount,string category, string tanentId, string createdById, DateTime createdAt, bool showOnWebsite, bool deleted)
        {
            Id = id;
            AggregateId = id;
            ImageId = imageId;
            Name = name;
            Amount = amount;
            Category = category;
            CreatedById = createdById;
            TanentId = tanentId;
            CreatedAt = createdAt;
            ShowOnWebsite = showOnWebsite;
            Deleted = deleted;
        }

    }
}
