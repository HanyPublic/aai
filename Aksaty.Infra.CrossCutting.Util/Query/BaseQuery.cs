using NetDevPack.Domain;
using System;
using System.Collections.Generic;
using System.Text;

namespace Aksaty.Infra.CrossCutting.Util
{
    public abstract class BaseQuery: BaseEntityQuery
    {
        public int? PageSize { get; set; } = 20;
        public int? PageNumber { get; set; } = 1;
        public string SearchQuery { get; set; }
        public string OrderBy { get; set; }

    }
}
