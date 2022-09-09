using Aksaty.Domain.Events;
using MediatR;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace Aksaty.Domain.Handlers
{
    public class SaleInstallmentEventsHandler :
        INotificationHandler<SaleInstallmentAddedEvent>,
        INotificationHandler<SaleInstallmentUpdatedEvent>,
        INotificationHandler<SaleInstallmentRemovedEvent>
    {
        public Task Handle(SaleInstallmentRemovedEvent notification, CancellationToken cancellationToken)
        {
            return Task.CompletedTask;
        }

        public Task Handle(SaleInstallmentUpdatedEvent notification, CancellationToken cancellationToken)
        {
            return Task.CompletedTask;
        }

        public Task Handle(SaleInstallmentAddedEvent notification, CancellationToken cancellationToken)
        {
            return Task.CompletedTask;
        }
    }
}
