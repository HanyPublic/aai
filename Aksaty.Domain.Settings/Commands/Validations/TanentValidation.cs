using System;
using FluentValidation;

namespace Aksaty.Domain.Commands.Validations
{
    public abstract class TanentValidation<T> : AbstractValidator<T> where T : TanentCommand
    {
        protected void ValidateName()
        {
            RuleFor(c => c.Name)
                .NotEmpty().WithMessage("Please ensure you have entered the Name")
                .Length(2, 150).WithMessage("The Name must have between 2 and 150 characters");
        }

        protected void ValidatePerecntage()
        {
            RuleFor(c => c.Perecntage)
                .NotEmpty();
        }

        protected void ValidateMonthCount()
        {
            RuleFor(c => c.MonthCount)
                .NotEmpty();
        }

        protected void ValidateId()
        {
            RuleFor(c => c.Id)
                .NotEqual(Guid.Empty);
        }

        
    }
}