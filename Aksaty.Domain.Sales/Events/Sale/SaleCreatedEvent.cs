using Aksaty.Domain.Models;
using Aksaty.Domain.Sales.Events.Sale;
using NetDevPack.Messaging;
using System;
using System.Collections.Generic;
using System.Text;

namespace Aksaty.Domain.Events
{
    public class SaleCreatedEvent:SaleEvent
    {
        public SaleCreatedEvent(
            Guid id, 
            Guid? customerId, DateTime startDate, string status,
            decimal amount,decimal paidAmount, decimal remainingAmount , int installmentMonthNumber,
            int installmentValue,decimal percentage,
            string createdById, string tanentId, DateTime createdAt,
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
            Percentage = percentage;
            CreatedById = createdById;
            TanentId = tanentId;
            CreatedAt = createdAt;
            ShowOnWebsite = showOnWebsite;
            Deleted = deleted;
        }


    }
}
