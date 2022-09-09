using System;
using System.Collections.Generic;
using System.Text;

namespace Aksaty.Domain.Commands
{
   public class UpdateProductCommand:ProductCommand
    {
        public UpdateProductCommand(Guid id,string imageId ,string name, decimal amount, string category,bool showOnWebsite, bool deleted)
        {
            Id = id;
            AggregateId = id;
            if (!string.IsNullOrEmpty(imageId)) ImageId = Guid.Parse(imageId);
            Name = name;
            Amount = amount;
            Category = category;
            ShowOnWebsite = showOnWebsite;
            Deleted = deleted;
        }
    }
}
