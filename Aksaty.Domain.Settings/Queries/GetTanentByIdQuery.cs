using Aksaty.Domain.Commands;
using System;
using System.Collections.Generic;
using System.Text;
using MediatR;
using Aksaty.Domain.Models;
namespace Aksaty.Domain.Tanents.Queries
{
    public class GetTanentByIdQuery:IRequest<Tanent>
    {
        public GetTanentByIdQuery(string userId)
        {
            UserId = userId;
        }
        public string UserId { get; protected set; }
    }
}
