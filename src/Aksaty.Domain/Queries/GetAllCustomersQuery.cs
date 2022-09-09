using Aksaty.Infra.CrossCutting.Util;
using System;
using System.Collections.Generic;
using System.Text;

namespace Aksaty.Domain.Queries
{
    public class GetAllCustomersQuery : BaseQuery
    {
        public DateTime? MinBirthDate { get; set; }
        public DateTime? MaxBirthDate { get; set; }
        public DateTime? MinNextInstallDate { get; set; }
        public DateTime? MaxNextInstallDate { get; set; }
        public decimal? MinBalance { get; set; }
        public decimal? MaxBalance { get; set; }
        public bool IncludeAttachments { get; set; }
        public GetAllCustomersQuery(
            DateTime? minBirthDate, DateTime? maxBirthDate,
            DateTime? minNextInstallDate, DateTime? maxNextInstallDate,
            decimal? minBalance, decimal? maxBalance,bool includeAttachments, string createdById,
           string tanentId,bool showOnWebsite, bool deleted)
        {
            MinBirthDate = minBirthDate;
            MaxBirthDate = maxBirthDate;
            MinNextInstallDate = minNextInstallDate;
            MaxNextInstallDate = maxNextInstallDate;
            MinBalance = minBalance;
            MaxBalance = maxBalance;
            IncludeAttachments = includeAttachments;
            CreatedById = createdById;
            TanentId = tanentId;
            ShowOnWebsite = showOnWebsite;
            Deleted = deleted;
        }
    }
}
