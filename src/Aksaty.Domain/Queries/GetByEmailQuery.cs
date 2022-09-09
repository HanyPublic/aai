using Aksaty.Infra.CrossCutting.Util;
using System;
using System.Collections.Generic;
using System.Text;

namespace Aksaty.Domain.Queries
{
    public class GetByEmailQuery : BaseEntityQuery
    {
        public string Email { get; set; }
        public GetByEmailQuery(
           string email, string createdById,
          string tanentId, bool showOnWebsite,
          bool deleted)
        {
            Email = email;
            CreatedById = createdById;
            TanentId = tanentId;
            ShowOnWebsite = showOnWebsite;
            Deleted = deleted;
        }
    }
}
