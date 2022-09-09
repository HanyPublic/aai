using Aksaty.Infra.CrossCutting.Util;
using System;
using System.Collections.Generic;
using System.Text;

namespace Aksaty.Application.ViewModels
{
    public class GetSaleInstallmentViewModel : BaseQuery
    {
        public Guid Id { get; set; }
        public bool? IncludeSale { get; set; } = false;
    }
}
