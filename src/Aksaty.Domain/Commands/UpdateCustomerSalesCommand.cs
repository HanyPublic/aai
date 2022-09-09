using Aksaty.Domain.Commands;
using System;
using System.Collections.Generic;
using System.Text;

namespace Aksaty.Domain.Customer.Commands
{
    public class UpdateCustomerSalesCommand:CustomerCommand
    {
        public UpdateCustomerSalesCommand(
            Guid id,
            decimal balance,
            DateTime nextInstallmentDate
            )
        {
            Id = id;
            Balance = balance;
            NextInstallDate = nextInstallmentDate;
        }

    }
}
