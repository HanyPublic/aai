using Aksaty.Infra.CrossCutting.Util;
using System;
using System.Collections.Generic;
using System.Text;

namespace Aksaty.Application.ViewModels
{
    public class GetAttachmentViewModel:BaseEntityQuery
    {
        public Guid Id { get; set; }
        public GetAttachmentViewModel(
            Guid id,
            string createdById,
            string tanentId,
            bool deleted)
        {
            Id = id;
            CreatedById = createdById;
            TanentId = tanentId;
            Deleted = deleted;
        }
    }
}
