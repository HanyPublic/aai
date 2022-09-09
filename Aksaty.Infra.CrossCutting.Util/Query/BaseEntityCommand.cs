using NetDevPack.Messaging;
using System;
using System.Collections.Generic;
using System.Text;

namespace Aksaty.Infra.CrossCutting.Util
{
    public class BaseEntityCommand:Command,IBaseEntity
    {
        public string CreatedById { get; set; } //UserId
        public string TanentId { get; set; }
        public DateTime CreatedAt { get; set; }
        public bool ShowOnWebsite { get; set; } = true;
        public bool Deleted { get; set; } = false;
    }
}
