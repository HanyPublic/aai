using NetDevPack.Messaging;
using System;

namespace Aksaty.Domain.Events
{
    public abstract class SaleInstallmentEvent:Event
    {
        public Guid Id { get; set; }
        public Guid SaleId { get; set; }
        public decimal Amount { get; set; }
        public DateTime DueDate { get; set; }
        public string Status { get; set; }
    }
}
