using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using Aksaty.Domain.Models;
using Aksaty.Domain.Queries;
using Aksaty.Infra.CrossCutting.Util;
using NetDevPack.Data;

namespace Aksaty.Domain.Interfaces
{
    public interface ITanentRepository : IRepository<Tanent>
    {
        Task<Tanent> GetByUserId(string userId);
        Task<PagedList<Tanent>> GetAll(GetAllTanentsQuery getAllTanentsQuery);
        void Add(Tanent Tanent);
        void Update(Tanent Tanent);
    }
}