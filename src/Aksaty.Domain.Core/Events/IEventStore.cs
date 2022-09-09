using NetDevPack.Messaging;

namespace Aksaty.Domain.Core.Events
{
    public interface IEventStore
    {
        void Save<T>(T theEvent) where T : Event;
    }
}