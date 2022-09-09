using System;
using System.Collections.Generic;
using Aksaty.Domain.Attachments.Models;
using Aksaty.Domain.Commands.Validations;
using Aksaty.Domain.Models;

namespace Aksaty.Domain.Commands
{
    public class UpdateCustomerCommand : CustomerCommand
    {
        public UpdateCustomerCommand(
           Guid id, string imageId,
           string name, string email, DateTime birthDate,
           string mobile, string mobile2, string address,
           string type, string addRecription, bool showOnWebsite,
           string nationalId, string refId,
           string notes,string review, bool deleted)
        {
            Id = id;
            if (!string.IsNullOrEmpty(imageId)) ImageId = Guid.Parse(imageId);
            Name = name;
            Email = email;
            BirthDate = birthDate;
            Mobile = mobile;
            Mobile2 = mobile2;
            Address = address;
            Type = type;
            AddRecription = addRecription;
            ShowOnWebsite = showOnWebsite;
            NationalId = nationalId;
            RefId = refId;
            Notes = notes;
            Review = review;
            Deleted = deleted;
        }
       
        public override bool IsValid()
        {
            ValidationResult = new UpdateCustomerCommandValidation().Validate(this);
            return ValidationResult.IsValid;
        }
    }
}