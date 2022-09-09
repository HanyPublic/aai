using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using Aksaty.Domain.Models;
using Aksaty.Domain.Queries;
using Aksaty.Infra.CrossCutting.Util;
using NetDevPack.Data;

namespace Aksaty.Domain.Interfaces
{
    public interface ICustomerRepository : IRepository<Aksaty.Domain.Models.Customer>
    {
        Task<Aksaty.Domain.Models.Customer> GetById(Guid id);
        Task<Aksaty.Domain.Models.Customer> GetByEmail(GetByEmailQuery query );
        Task<PagedList<Aksaty.Domain.Models.Customer>> GetAll(GetAllCustomersQuery getAllCustomersQuery);

        void Add(Aksaty.Domain.Models.Customer customer);
        void Update(Aksaty.Domain.Models.Customer customer);
        void Remove(Aksaty.Domain.Models.Customer customer);
        void RemoveAttachments(IEnumerable<CustomerAttachment> attachments);
        Task AddAttachments(IEnumerable<CustomerAttachment> attachments);
    }
}