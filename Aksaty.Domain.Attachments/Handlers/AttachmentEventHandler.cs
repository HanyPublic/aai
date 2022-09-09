using Aksaty.Domain.Attachments.Events;
using MediatR;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace Aksaty.Domain.Attachments.Handlers
{
    public class AttachmentEventHandler :
        INotificationHandler<AttachmentAddedEvent>,
        INotificationHandler<AttachmentRemovedEvent>
    {
        public Task Handle(AttachmentAddedEvent notification, CancellationToken cancellationToken)
        {
            return Task.CompletedTask;
        }

        public Task Handle(AttachmentRemovedEvent notification, CancellationToken cancellationToken)
        {
            return Task.CompletedTask;

        }
    }
}
