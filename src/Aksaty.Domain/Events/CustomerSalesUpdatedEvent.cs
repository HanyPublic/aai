using NetDevPack.Messaging;
using System;
using System.Collections.Generic;
using System.Text;

namespace Aksaty.Domain.Customer.Events
{
    public class CustomerSalesUpdatedEvent:Event
    {
        public Guid Id { get; private set; }
        public decimal Balance { get; private set; }
        public DateTime NextInstallDate { get; private set; }
        public CustomerSalesUpdatedEvent(
          Guid id,
          decimal balance,
          DateTime nextInstallDate)
        {
            Id = id;
            Balance = balance;
            NextInstallDate = nextInstallDate;
        }
    }
}
