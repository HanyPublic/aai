using System;
using System.Collections.Generic;
using System.Text;

namespace Aksaty.Domain.Commands.Validations
{
    public class RemoveSaleCommandValidation:SaleValidation<RemoveSaleCommand>
    {
        public RemoveSaleCommandValidation()
        {
            ValidateId();

        }
    }
}
