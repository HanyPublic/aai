using Aksaty.Domain.Attachments.Models;
using Aksaty.Infra.CrossCutting.Util;
using MediatR;
using System;
using System.Collections.Generic;
using System.Text;

namespace Aksaty.Domain.Attachments.Queries
{
    public class GetAttachmentQuery : IRequest<Attachment>
    {
        public Guid Id { get; protected set; }
        public GetAttachmentQuery(Guid id)
        {
            Id = id;
        }
    }
}
