using System;
using System.Collections.Generic;
using System.Text;

namespace Aksaty.Domain.Commands.Validations
{
    class CreateNewSaleCommandValidation : SaleValidation<CreateNewSaleCommand>
    {
        public CreateNewSaleCommandValidation()
        {
            ValidateAmount();
            ValidatePaidAmount();
        }
    }
}
