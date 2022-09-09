using Aksaty.Domain.Models;
using Aksaty.Domain.Commands.Validations;
using System;
using System.Collections.Generic;

namespace Aksaty.Domain.Commands
{
    public class CreateNewSaleCommand : SaleCommand
    {
        public CreateNewSaleCommand(
            Guid id, 
            Guid? customerId, DateTime startDate,string status,
            decimal amount, decimal paidAmount, decimal remainingAmount,
            int installmentMonthNumber, int installmentValue, decimal percentage,
            string createdById, string tanentId,DateTime createdAt, 
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
            CreatedById = createdById;
            TanentId = tanentId;
            CreatedAt = createdAt;
            ShowOnWebsite = showOnWebsite;
            Deleted = deleted;
        }
    public override bool IsValid()
    {
        ValidationResult = new CreateNewSaleCommandValidation().Validate(this);
        return ValidationResult.IsValid;
    }
}
}
