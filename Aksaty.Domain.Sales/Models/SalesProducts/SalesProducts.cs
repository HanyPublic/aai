using Aksaty.Domain.Models;
using NetDevPack.Domain;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace Aksaty.Domain.Models
{
    public class SalesProducts: IAggregateRoot
    {
        public Guid ProductId { get; set; }
        public Guid SaleId { get; set; }
        public Sale Sale { get; set; }
        public Product Product { get; set; }
        public SalesProducts()
        {

        }
        public SalesProducts(Guid productId,Sale sale)
        {
            Sale = sale;
            ProductId = productId;
        }
        public static SalesProducts createSalesProducts(Guid productId, Sale sale)
        {
            return new SalesProducts(productId,sale);
        }
    }
}
