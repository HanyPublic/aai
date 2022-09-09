using System;
using System.Collections.Generic;
using System.Text;

namespace Aksaty.Application.ViewModels
{
    public class SaleInstallmentViewModel : SaleSaleInstallmentViewModel
    {
        public SaleViewModel Sale { get; set; }
        public SaleInstallmentViewModel()
        {

        }
        public SaleInstallmentViewModel(
            Guid id,
            decimal amount, Guid saleId,
            string status, DateTime dueDate,
            string tanentId, string createdById,
            DateTime createdAt, bool showOnWebsite,
            bool deleted
            )
        {
            Id = id;
            Amount = amount;
            SaleId = saleId;
            Status = status;
            DueDate = dueDate;
            TanentId = tanentId;
            CreatedById = createdById;
            CreatedAt = createdAt;
            ShowOnWebsite = showOnWebsite;
            Deleted = deleted;
        }
        public static SaleInstallmentViewModel createSaleInstallment(
            Guid id,
            decimal amount, Guid saleId,
            string status, DateTime dueDate,
            string tanentId, string createdById,
            DateTime createdAt, bool showOnWebsite,
            bool deleted)
        {
            return new SaleInstallmentViewModel(
                id,
                amount, saleId, status, 
                dueDate, tanentId, createdById,
                createdAt, showOnWebsite,deleted);
        }
    }
}
