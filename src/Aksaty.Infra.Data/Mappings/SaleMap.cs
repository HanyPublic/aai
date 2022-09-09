using Aksaty.Domain.Models;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using System;
using System.Collections.Generic;
using System.Text;

namespace Aksaty.Infra.Data.Mappings
{
    public class SaleMap : IEntityTypeConfiguration<Sale>
    {
        public void Configure(EntityTypeBuilder<Sale> builder)
        {
            builder.Property(s => s.Amount).HasColumnType("decimal(19, 4)");
            builder.Property(s => s.PaidAmount).HasColumnType("decimal(19, 4)");
            builder.Property(s => s.RemainingAmount).HasColumnType("decimal(19, 4)");
            builder.Property(s => s.Percentage).HasColumnType("decimal(11, 8)");
            builder.HasMany(s => s.SaleInstallments).WithOne(i => i.Sale).HasForeignKey(i=>i.SaleId).OnDelete(DeleteBehavior.Cascade);
        }
    }
}
