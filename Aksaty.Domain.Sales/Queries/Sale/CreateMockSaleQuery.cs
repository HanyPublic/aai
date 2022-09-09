using Aksaty.Domain.Models;
using MediatR;
using System;
using System.Collections.Generic;
using System.Text;

namespace Aksaty.Domain.Queries
{
    public class CreateMockSaleQuery:IRequest<Sale>
    {
    }
}
