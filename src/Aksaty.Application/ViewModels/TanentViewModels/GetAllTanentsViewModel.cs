using Aksaty.Infra.CrossCutting.Util;
using System;
using System.Collections.Generic;
using System.Text;

namespace Aksaty.Application.ViewModels
{
    public class GetAllTanentsViewModel:BaseQuery
    {
        public int? MinMonthCount { get; set; }
        public int? MaxMonthCount { get; set; }
        public decimal? MinPerecntage { get; set; }
        public decimal? MaxPerecntage { get; set; }
    }
}
