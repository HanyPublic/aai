using Aksaty.Domain.Models;
using NetDevPack.Data;
using System;
using System.Collections.Generic;
using System.Text;

namespace Aksaty.Domain.Interfaces
{
    public interface ISalesProductsRepository : IRepository<SalesProducts>
    {
        void Remove(SalesProducts salesProducts);
    }
}
