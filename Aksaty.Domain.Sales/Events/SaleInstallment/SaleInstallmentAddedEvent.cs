using System;
using System.Collections.Generic;
using System.Text;

namespace Aksaty.Domain.Events
{
    public class SaleInstallmentAddedEvent : SaleInstallmentEvent
    {
        public SaleInstallmentAddedEvent(
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
