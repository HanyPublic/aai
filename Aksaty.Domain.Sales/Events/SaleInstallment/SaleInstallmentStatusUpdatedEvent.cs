using System;

namespace Aksaty.Domain.Events
{
    public class SaleInstallmentStatusUpdatedEvent : SaleInstallmentEvent
    {
        public SaleInstallmentStatusUpdatedEvent(
            Guid id,
            Guid saleId,
            string status)
        {
            Id = id;
            AggregateId = id;
            SaleId = saleId;
            Status = status;
        }
    }
}
