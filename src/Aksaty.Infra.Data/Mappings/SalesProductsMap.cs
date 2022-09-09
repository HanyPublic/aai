using Aksaty.Domain.Models;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using System;
using System.Collections.Generic;
using System.Text;

namespace Aksaty.Infra.Data.Mappings
{
    public class SalesProductsMap : IEntityTypeConfiguration<SalesProducts>
    {
        public void Configure(EntityTypeBuilder<SalesProducts> builder)
        {
            builder.HasKey(sp => new { sp.ProductId, sp.SaleId });
            builder.HasOne(sp => sp.Sale).WithMany(s => s.SalesProducts).HasForeignKey(sp=>sp.SaleId);
            builder.HasOne(sp => sp.Product).WithMany(s => s.SalesProducts).HasForeignKey(sp=>sp.ProductId);
        }
    }
}
