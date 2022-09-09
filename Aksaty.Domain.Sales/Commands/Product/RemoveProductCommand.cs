using NetDevPack.Messaging;
using System;
using System.Collections.Generic;
using System.Text;

namespace Aksaty.Domain.Commands
{
    public class RemoveProductCommand:Command
    {
        public Guid Id { get; set; }
        public RemoveProductCommand(Guid id)
        {
            Id = id;
        }
    }
}
