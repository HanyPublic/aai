using Aksaty.Domain.Commands.Validations;
using System;

namespace Aksaty.Domain.Commands
{
    public class RemoveSaleCommand:SaleCommand
    {
        public RemoveSaleCommand(Guid id)
        {
            Id = id;
            AggregateId = id;
        }

        public override bool IsValid()
        {
            ValidationResult = new RemoveSaleCommandValidation().Validate(this);
            return ValidationResult.IsValid;
        }
    }
}
