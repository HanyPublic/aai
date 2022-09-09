using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Text;
using Aksaty.Domain.Models;
using Aksaty.Infra.CrossCutting.Util;
using NetDevPack.Domain;
namespace Aksaty.Domain.Models
{
    public class Sale : BaseEntity, IAggregateRoot
    {
        public Sale(
          Guid id,
          Guid? customerId, DateTime startDate, string status,
          decimal amount, decimal paidAmount, decimal remainingAmount,
          int installmentMonthNumber, int installmentValue, decimal percentage,
          List<SaleInstallment> saleInstallments,string createdById,string tanentId,
          DateTime createdAt,bool showOnWebsite,bool deleted)
        {
            Id = id;
            CustomerId = customerId;
            StartDate = startDate;
            Status = status;
            Amount = amount;
            PaidAmount = paidAmount;
            RemainingAmount = remainingAmount;
            InstallmentMonthNumber = installmentMonthNumber;
            InstallmentValue = installmentValue;
            Percentage = percentage;
            SaleInstallments = saleInstallments;
            CreatedById = createdById;
            TanentId = tanentId;
            CreatedAt = createdAt;
            ShowOnWebsite = showOnWebsite;
            Deleted = deleted;
        }
        public Sale ()
        {

        }
        public Guid? CustomerId { get; set; }
        [ForeignKey("CustomerId")]
        public Aksaty.Domain.Models.Customer Customer { get; set; }
        public DateTime StartDate { get; private set; }
        public string Status { get; set; }
        public decimal Amount { get;  set; }
        public decimal PaidAmount { get;  set; }
        public decimal RemainingAmount { get;  set; }
        public int InstallmentMonthNumber { get;  set; }
        public int InstallmentValue { get;  set; }
        public decimal Percentage { get;  set; }
        public List<SalesProducts> SalesProducts { get; set; }
        public List<SaleInstallment> SaleInstallments { get; set; }


        public void UpdateSale(Guid id,
          Guid? customerId, DateTime startDate, string status,
          decimal amount, decimal paidAmount, decimal remainingAmount,
          int installmentMonthNumber, int installmentValue, decimal percentage,
          bool showOnWebsite, bool deleted)
        {
            Id = id;
            CustomerId = customerId;
            StartDate = startDate;
            Status = status;
            Amount = amount;
            PaidAmount = paidAmount;
            RemainingAmount = remainingAmount;
            InstallmentMonthNumber = installmentMonthNumber;
            InstallmentValue = installmentValue;
            Percentage = percentage;
            ShowOnWebsite = showOnWebsite;
            Deleted = deleted;
        }
        /// <summary>
        /// Calculates installment value by getting the remaining from total amount (with interest) - paid amount
        /// </summary>
        /// <param name="amount"></param>
        /// <param name="percentage"></param>
        /// <param name="paidAmount"></param>
        /// <param name="monthNumber"></param>
        /// <returns></returns>
        public static int CalculateInstallmentValue(decimal remaining,int monthNumber)
        {
            return Convert.ToInt32((Math.Ceiling(remaining / monthNumber)));
        }
        /// <summary>
        /// Calculates remaining amount with interest 
        /// </summary>
        /// <param name="remaining"></param>
        /// <param name="percentage"></param>
        /// <returns></returns>
        public static decimal CalculateRemainingWithInterest(decimal remaining,decimal percentage)
        {
            return (remaining + remaining * (percentage/100));
        }
        /// <summary>
        /// Calculates the total interest 
        /// </summary>
        /// <param name="Amount"></param>
        /// <param name="percentage"></param>
        /// <returns></returns>
        public static decimal CalculateInterest(decimal remaining, decimal percentage)
        {
            return (remaining * (percentage/100));
        }
    }
}
