using Aksaty.Infra.CrossCutting.Util;
using System;
using System.Collections.Generic;
using System.Text;

namespace Aksaty.Application.ViewModels
{
    public class GetAllCustomersViewModel: BaseQuery
    {
        public DateTime? MinBirthDate { get; set; }
        public DateTime? MaxBirthDate { get; set; }
        public DateTime? MinNextInstallDate { get; set; }
        public DateTime? MaxNextInstallDate { get; set; }
        public decimal? MinBalance { get; set; }
        public decimal? MaxBalance { get; set; }
        public bool? includeAttachments { get; set; }=false;
    }
}
