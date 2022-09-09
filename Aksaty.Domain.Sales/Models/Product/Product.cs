using Aksaty.Domain.Attachments.Models;
using Aksaty.Infra.CrossCutting.Util;
using NetDevPack.Domain;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Text;

namespace Aksaty.Domain.Models
{
    public class Product : BaseEntity, IAggregateRoot
    {
        public Product(Guid id, Guid? imageId, string name, decimal amount, string category, string tanentId, string createdById, DateTime createdAt, bool showOnWebsite, bool deleted)
        {
            Id = id;
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
        public Guid? ImageId { get; set; }
        [ForeignKey("ImageId")]
        public Attachment Image { get; set; }
        [Column(TypeName = "nvarchar(500)")]
        public string Name { get; set; }
        public decimal Amount { get; set; }
        [Column(TypeName = "nvarchar(500)")]
        public string Category { get; set; }
        public List<SalesProducts> SalesProducts { get; set; }
    }
}
