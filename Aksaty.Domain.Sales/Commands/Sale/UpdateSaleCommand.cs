using Aksaty.Domain.Commands.Validations;
using Aksaty.Domain.Models;
using System;
using System.Collections.Generic;

namespace Aksaty.Domain.Commands
{
    public class UpdateSaleCommand : SaleCommand
    {
        public UpdateSaleCommand(
             Guid id,
             Guid? customerId, DateTime startDate, string status,
             decimal amount, decimal paidAmount, decimal remainingAmount,
             int installmentMonthNumber, int installmentValue, decimal percentage,
            bool showOnWebsite, bool deleted)
        {
            Id = id;
            AggregateId = id;
            CustomerId = customerId;
            StartDate = startDate;
            Status = status;
            Amount = amount;
            PaidAmount = paidAmount;
            RemainingAmount = remainingAmount;
            InstallmentMonthNumber = installmentMonthNumber;
            InstallmentValue = installmentValue;
            Perecntage = percentage;
            ShowOnWebsite = showOnWebsite;
            Deleted = deleted;
        }

        public override bool IsValid()
        {
            ValidationResult = new UpdateSaleCommandValidation().Validate(this);
            return ValidationResult.IsValid;
        }
    }
}
