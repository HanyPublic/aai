using Aksaty.Domain.Models;
using Aksaty.Domain.Queries;
using Aksaty.Infra.CrossCutting.Util;
using NetDevPack.Data;
using System;
using System.Threading.Tasks;

namespace Aksaty.Domain.Interfaces
{
    public interface ISaleRepository : IRepository<Sale>
    {
        Task<Sale> GetById(Guid Id,bool includeProducts,bool includeInstallments,bool includeCustomers);
        Task<Sale> GetById(Guid Id);
        Task<PagedList<Sale>> GetAll(GetAllSalesQuery queryParams);
        void Add(Sale Sale);
        void Update(Sale Sale);
        void Remove(Sale Sale);
        Sale Create(Sale sale);
    }
}
