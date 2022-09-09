using Aksaty.Domain.Models;
using Aksaty.Infra.CrossCutting.Util;
using MediatR;
using System;
using System.Collections.Generic;
using System.Text;

namespace Aksaty.Domain.Queries
{
    public class GetAllTanentsQuery : BaseQuery, IRequest<PagedList<Tanent>>
    {
        public int? MinMonthCount { get; set; }
        public int? MaxMonthCount { get; set; }
        public decimal? MinPerecntage { get; set; }
        public decimal? MaxPerecntage { get; set; }
        public GetAllTanentsQuery(
            int? minMonthCount, int? maxMonthCount,
            decimal? minPerecntage, decimal? maxPerecntage)
        {
            MinMonthCount = minMonthCount;
            MaxMonthCount = maxMonthCount;
            MinPerecntage = minPerecntage;
            MaxPerecntage = maxPerecntage;
        }
    }
}
