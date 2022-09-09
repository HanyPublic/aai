using System;
using Aksaty.Domain.Customer.Events;
using NetDevPack.Messaging;

namespace Aksaty.Domain.Events
{
    public class CustomerRegisteredEvent : CustomerEvent
    {
        public CustomerRegisteredEvent(
            Guid id, Guid? imageId,
            string name, string email, 
            DateTime birthDate,string mobile, 
            string mobile2, string address, string type,
            string addRecription, string createdById,
           string tanentId, DateTime createdAt,
           bool showOnWebsite, string nationalId,
           string refId, string notes, string review, bool deleted
            )
        {
            Id = id;
            ImageId = imageId;
            Name = name;
            Email = email;
            BirthDate = birthDate;
            Mobile = mobile;
            Mobile2 = mobile2;
            Address = address;
            Type = type;
            AddRecription = addRecription;
            CreatedById = createdById;
            TanentId = tanentId;
            CreatedAt = createdAt;
            ShowOnWebsite = showOnWebsite;
            NationalId = nationalId;
            RefId = refId;
            Notes = notes;
            Review = review;
            Deleted = deleted;
        }

    }
}