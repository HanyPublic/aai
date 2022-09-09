using Aksaty.Infra.CrossCutting.Util;
using System;

namespace Aksaty.Application.ViewModels
{
    public class GetAllAttachmentsViewModel:BaseQuery
    {
        public Guid? EntityId { get; set; }
        public string EntityType { get; set; }
    }
}
