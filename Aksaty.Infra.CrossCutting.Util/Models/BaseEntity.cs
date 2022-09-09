using System;
using System.Collections.Generic;
using System.Text;
using NetDevPack.Domain;
namespace Aksaty.Infra.CrossCutting.Util
{
    public class BaseEntity:Entity, IBaseEntity
    {
        public string CreatedById { get; set; } //UserId
        public string TanentId { get; set; }
        public DateTime CreatedAt { get; set; }
        public bool ShowOnWebsite { get; set; }
        public bool Deleted { get; set; }

    }
}
