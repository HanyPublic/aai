using Aksaty.Domain.Models;
using Aksaty.Infra.CrossCutting.Util;
using NetDevPack.Messaging;
using System;
using System.Collections.Generic;
using System.Text;

namespace Aksaty.Domain.Sales.Events.Sale
{
    public abstract class SaleEvent:BaseEntityEvent
    {
        public Guid Id { get; set; }
        public Guid? CustomerId { get; set; }
        public DateTime StartDate { get; set; }
        public string Status { get; set; }
        public decimal Amount { get; set; }
        public decimal PaidAmount { get; set; }
        public decimal RemainingAmount { get; set; }
        public int InstallmentMonthNumber { get; set; }
        public int InstallmentValue { get; set; }
        public decimal Percentage { get; set; }
    }
}
