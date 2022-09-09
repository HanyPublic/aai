using System;

namespace Aksaty.Domain.Commands
{
    public class AddSaleInstallmentCommand : SaleInstallmentCommand
    {
        public AddSaleInstallmentCommand(
            Guid saleId,
            decimal amount, DateTime dueDate,string status,
            string createdById, string tanentId, DateTime createdAt,
            bool showOnWebsite, bool deleted)
        {
            SaleId = saleId;
            Amount = amount;
            DueDate = dueDate;
            Status = status;
            CreatedById = createdById;
            TanentId = tanentId;
            CreatedAt = createdAt;
            ShowOnWebsite = showOnWebsite;
            Deleted = deleted;
        }
    }
}
