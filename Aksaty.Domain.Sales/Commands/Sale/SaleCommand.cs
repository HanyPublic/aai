using Aksaty.Domain.Models;
using Aksaty.Infra.CrossCutting.Util;
using NetDevPack.Messaging;
using System;
using System.Collections.Generic;
namespace Aksaty.Domain.Commands
{
    public  abstract class SaleCommand :BaseEntityCommand
    {
        public Guid Id { get; protected set; }
        public Guid? CustomerId { get; protected set; }
        public DateTime StartDate { get; protected set; }
        public string Status { get; protected set; }
        public decimal Amount { get; protected set; }
        public decimal PaidAmount { get; protected set; }
        public decimal RemainingAmount { get; protected set; }
        public int InstallmentMonthNumber { get; protected set; }
        public int InstallmentValue { get; protected set; }
        public decimal Perecntage { get; protected set; }
        public List<Product> Products { get; set; }
        public List<SaleInstallment> SaleInstallments { get; set; }
    }
}
