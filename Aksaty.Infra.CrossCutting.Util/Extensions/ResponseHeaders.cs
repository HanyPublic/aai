using Microsoft.AspNetCore.Http;
using System;
using System.Collections.Generic;
using System.Text;

namespace Aksaty.Infra.CrossCutting.Util
{
    public static class ResponseHeaders
    {
        /// <summary>
        /// Adds pagination values to the header
        /// </summary>
        /// <param name="headers"></param>
        /// <param name="value"></param>
        public static void AddPagination(this IHeaderDictionary headers, string value)
        {
            headers.Add("X-Pagination", value);
        }
    }
}
