using System;

namespace Aksaty.Domain.Commands
{
    public class RemoveSaleInstallmentCommand : SaleInstallmentCommand
    {
        public RemoveSaleInstallmentCommand(Guid id)
        {
            Id = id;
            AggregateId = id;
        }
    }
}
