using System;
using Aksaty.Domain.Tanents.Events;
using NetDevPack.Messaging;

namespace Aksaty.Domain.Events
{
    public class TanentRegisteredEvent :TanentEvent
    {
        public TanentRegisteredEvent(Guid id,Guid? imageId ,string name, string email, string mobile, string address, string currency, int monthCount, decimal perecntage, string logo, string colors, string note, string signatureArray, string stampAttachment)
        {
            Id = id;
            AggregateId = id;
            ImageId = imageId;
            Name = name;
            Email = email;
            Mobile = mobile;
            Address = address;
            Currency = currency;
            MonthCount = monthCount;
            Perecntage = perecntage;
            Logo = logo;
            Colors = colors;
            Note = note;
            SignatureArray = signatureArray;
            StampAttachment = stampAttachment;
        }
    }
}