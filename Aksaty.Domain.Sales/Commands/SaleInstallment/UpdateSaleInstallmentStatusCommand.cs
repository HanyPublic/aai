using System;
using System.Collections.Generic;
using System.Text;

namespace Aksaty.Domain.Commands
{
    public class UpdateSaleInstallmentStatusCommand : SaleInstallmentCommand
    {
        public UpdateSaleInstallmentStatusCommand(
         Guid id,
         Guid saleId, decimal amount, DateTime dueDate,
         string status, bool showOnWebsite, bool deleted)
        {
            Id = id;
            AggregateId = id;
            SaleId = saleId;
            Amount = amount;
            DueDate = dueDate;
            Status = status;
            ShowOnWebsite = showOnWebsite;
            Deleted = deleted;
        }
    }
}
