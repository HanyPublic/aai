using Aksaty.Domain.Attachments.Commands;
using FluentValidation;
using System;
using System.Collections.Generic;
using System.Text;

namespace Aksaty.Domain.Attachments.Commands.Validations
{
    public abstract class AttachmentCommandValidation<T>:AbstractValidator<T> where T: AttachmentCommand
    {
        protected void ValidateId()
        {
            RuleFor(a => a.Id).NotEqual(Guid.Empty).WithMessage("Id is required.");
        }
    }
}
