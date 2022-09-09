using Aksaty.Domain.Models;
using System;
using System.Collections.Generic;

namespace Aksaty.Domain.Commands
{
    public class AddProductCommand:ProductCommand
    {
        public AddProductCommand(string imageId,string name,decimal amount, string category, string tanentId, string createdById, DateTime createdAt, bool showOnWebsite, bool deleted)
        {
            if (!string.IsNullOrEmpty(imageId)) ImageId = Guid.Parse(imageId);
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
