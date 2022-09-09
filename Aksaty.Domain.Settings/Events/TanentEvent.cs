using NetDevPack.Messaging;
using System;
using System.Collections.Generic;
using System.Text;

namespace Aksaty.Domain.Tanents.Events
{
    /// <summary>
    /// Absatract represntation for Tanent event
    /// </summary>
    public abstract class TanentEvent:Event
    {
        public Guid? ImageId { get; protected set; }
        public Guid Id { get; protected set; }
        public string Name { get; protected set; }
        public string Email { get; protected set; }
        public string Mobile { get; protected set; }
        public string Address { get; protected set; }
        public string Currency { get; protected set; }
        public int MonthCount { get; protected set; }
        public decimal Perecntage { get; protected set; }
        public string Logo { get; protected set; }
        public string Colors { get; protected set; }
        public string Note { get; protected set; }
        public string SignatureArray { get; protected set; }
        public string StampAttachment { get; protected set; }
    }
}
