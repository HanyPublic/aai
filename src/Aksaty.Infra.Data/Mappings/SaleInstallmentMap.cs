using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using Aksaty.Domain.Models;

namespace Aksaty.Infra.Data.Mappings
{
    public class SaleInstallmentMap : IEntityTypeConfiguration<SaleInstallment>
    {
        public void Configure(EntityTypeBuilder<SaleInstallment> builder)
        {
            builder.Property(st => st.Amount).HasColumnType("decimal(19, 4)");
        }
    }
}
