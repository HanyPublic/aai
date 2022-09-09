using System.Threading;
using System.Threading.Tasks;
using MediatR;

namespace Aksaty.Domain.Events
{
    /// <summary>
    /// Handler for Tanent Events
    /// </summary>
    public class TanentEventHandler :
        INotificationHandler<TanentRegisteredEvent>,
        INotificationHandler<TanentUpdatedEvent>,
        INotificationHandler<TanentRemovedEvent>
    {
        public Task Handle(TanentUpdatedEvent message, CancellationToken cancellationToken)
        {
            // Send some notification e-mail

            return Task.CompletedTask;
        }

        public Task Handle(TanentRegisteredEvent message, CancellationToken cancellationToken)
        {
            // Send some greetings e-mail

            return Task.CompletedTask;
        }

        public Task Handle(TanentRemovedEvent message, CancellationToken cancellationToken)
        {
            // Send some see you soon e-mail

            return Task.CompletedTask;
        }
    }
}