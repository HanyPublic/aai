using Aksaty.Domain.Models;
using Aksaty.Infra.CrossCutting.Util;
using NetDevPack.Domain;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Text;

namespace Aksaty.Domain.Models
{
   public class SaleInstallment : BaseEntity, IAggregateRoot
    {
        public SaleInstallment(
        Guid id,
        Guid saleId, decimal amount,DateTime dueDate,
        string status, string tanentId,string createdById,
        DateTime createdAt,bool showOnWebsite,bool deleted, string type)
        {
            Id = id;
            SaleId = saleId;
            Amount = amount;
            DueDate = dueDate;
            Status = status;
            TanentId = tanentId;
            CreatedById = createdById;
            CreatedAt = createdAt;
            ShowOnWebsite = showOnWebsite;
            Deleted = deleted;
            Type = type;
        }
        public Guid SaleId { get; set; }
        [ForeignKey("SaleId")]
        public Sale Sale { get; set; }
        public decimal Amount { get; set; }
        public DateTime DueDate { get; set; }
        public string Status { get; set; }
        public string Type { get; set; }
        public static SaleInstallment CreateSaleInstallment(Guid id,
        Guid saleId, decimal amount, DateTime dueDate,
        string status, string tanentId, string createdById,
        DateTime createdAt, bool showOnWebsite, bool deleted,string type="")
        {
            return new SaleInstallment(id,saleId,amount,dueDate,status,tanentId,createdById,createdAt,showOnWebsite,deleted, type);
        }
    }
}
