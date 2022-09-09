using Aksaty.Domain.Models;
using Aksaty.Domain.Queries;
using Aksaty.Infra.CrossCutting.Util;
using NetDevPack.Data;
using System;
using System.Threading.Tasks;

namespace Aksaty.Domain.Interfaces
{
    public interface IProductRepository:IRepository<Product>
    {
        Task<PagedList<Product>> GetAll(GetAllProductsQuery query);
        Task<Product> GetById(Guid Id);
        Task<Product> GetById(GetProductQuery getProductQuery);
        void Add(Product product);
        void Update(Product product);
        void Remove(Product product);
    }
}
