using System;
using System.Collections.Generic;
using System.Text;
using Aksaty.Domain.Models;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace Aksaty.Infra.Data.Mappings
{
    public class TanentMap : IEntityTypeConfiguration<Tanent>
    {
        public void Configure(EntityTypeBuilder<Tanent> builder)
        {
            builder.Property(s => s.Perecntage).HasColumnType("decimal(11, 8)");
        }
    }
}
