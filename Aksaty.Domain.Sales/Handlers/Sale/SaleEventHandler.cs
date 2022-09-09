using Aksaty.Domain.Events;
using MediatR;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace Aksaty.Domain.Handlers
{
    public class SaleEventHandler : INotificationHandler<SaleCreatedEvent>,
        INotificationHandler<SaleUpdateEvent>,
        INotificationHandler<SaleRemovedEvent>
    {

        public Task Handle(SaleUpdateEvent message, CancellationToken cancellationToken)
        {
            // Send some notification e-mail

            return Task.CompletedTask;
        }

        public Task Handle(SaleCreatedEvent message, CancellationToken cancellationToken)
        {
            // Send some greetings e-mail

            return Task.CompletedTask;
        }

        public Task Handle(SaleRemovedEvent message, CancellationToken cancellationToken)
        {
            // Send some see you soon e-mail

            return Task.CompletedTask;
        }

    }
}
