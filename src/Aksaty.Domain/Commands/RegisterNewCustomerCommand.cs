using System;
using System.Collections.Generic;
using Aksaty.Domain.Attachments.Models;
using Aksaty.Domain.Commands.Validations;
using Aksaty.Domain.Models;

namespace Aksaty.Domain.Commands
{
    public class RegisterNewCustomerCommand : CustomerCommand
    {
        public RegisterNewCustomerCommand(
            string imageId,
            string name, string email, DateTime birthDate,
            string mobile, string mobile2, string address,
            string type, string addRecription,
            string createdById, string tanentId,
            DateTime createdAt, bool showOnWebsite,
            string nationalId, string refId,
            string notes,string review, bool deleted
            )
        {
            if (!string.IsNullOrEmpty(imageId)) ImageId = Guid.Parse(imageId);
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

        public override bool IsValid()
        {
            ValidationResult = new RegisterNewCustomerCommandValidation().Validate(this);
            return ValidationResult.IsValid;
        }
    }
}