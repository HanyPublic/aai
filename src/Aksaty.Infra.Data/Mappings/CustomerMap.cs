using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using Aksaty.Domain.Models;

namespace Aksaty.Infra.Data.Mappings
{    
    public class CustomerMap : IEntityTypeConfiguration<Aksaty.Domain.Models.Customer>
    {
        public void Configure(EntityTypeBuilder<Aksaty.Domain.Models.Customer> builder)
        {
            builder.Property(c => c.Id)
                .HasColumnName("Id");

            builder.Property(c => c.Balance)
                .HasColumnType("DECIMAL(13, 2)")
                .HasMaxLength(100)
                .IsRequired();
        }
    }
}
