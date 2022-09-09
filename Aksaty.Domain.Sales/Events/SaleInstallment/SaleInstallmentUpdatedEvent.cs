using System;

namespace Aksaty.Domain.Events
{
    public class SaleInstallmentUpdatedEvent : SaleInstallmentEvent
    {
        public SaleInstallmentUpdatedEvent(
            Guid id,
            Guid saleId,
            decimal amount,
            DateTime dueDate,
            string status)
        {
            Id = id;
            AggregateId = id;
            SaleId = saleId;
            Amount = amount;
            DueDate = dueDate;
            Status = status;
        }
    }
}
