using Aksaty.Infra.CrossCutting;
using Aksaty.Infra.CrossCutting.Util;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Http;
using Microsoft.Extensions.DependencyInjection;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Aksaty.Api.Configurations
{
    internal static class HttpContextAccessorConfig
    {
        internal static IApplicationBuilder UseHttpContext(this IApplicationBuilder applicationBuilder)
        {
            MyHttpContext.Configure(applicationBuilder.ApplicationServices.GetRequiredService<IHttpContextAccessor>());
            return applicationBuilder;
        }
    }
}
