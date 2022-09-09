using Aksaty.Domain.Events;
using MediatR;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace Aksaty.Domain.Handlers
{
    public class ProductEventHandler : INotificationHandler<ProductCreatedEvent>,
         INotificationHandler<ProductUpdatedEvent>,
         INotificationHandler<ProductRemovedEvent>
    {
        public Task Handle(ProductCreatedEvent notification, CancellationToken cancellationToken)
        {
            return Task.CompletedTask;
        }
        public Task Handle(ProductUpdatedEvent notification, CancellationToken cancellationToken)
        {
            return Task.CompletedTask;
        }
        public Task Handle(ProductRemovedEvent notification, CancellationToken cancellationToken)
        {
            return Task.CompletedTask;
        }
    }
}
