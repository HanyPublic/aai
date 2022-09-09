using Aksaty.Domain.Models;
using FluentValidation;
using System;
using System.Collections.Generic;

namespace Aksaty.Domain.Commands.Validations
{
    public abstract class SaleValidation<T> : AbstractValidator<T> where T : SaleCommand
    {
        protected void ValidateAmount()
        {
            RuleFor(s => s.Amount).GreaterThan(0).WithMessage("Amount must be more than zero");
        }

        protected void ValidatePaidAmount()
        {
            RuleFor(s => s.PaidAmount).LessThanOrEqualTo(s=>s.Amount)
                .WithMessage("Paid Amount  Must be less than or equal Amount").GreaterThanOrEqualTo(0)
                .WithMessage("Paid Amout shouldn't be negative");
        }
        //protected void ValidateRemainingAmount()
        //{
        //    RuleFor(s => Sale.CalculateRemainingWithInterest( s.RemainingAmount + s.PaidAmount).Equal(s => s.Amount)
        //        .WithMessage("Paid Amount + Remaining  Must be equal to Amount").GreaterThanOrEqualTo(0)
        //        .WithMessage("Remaining Amout shouldn't be negative");
        //}

        protected void ValidateId()
        {
            RuleFor(c => c.Id)
                .NotEqual(Guid.Empty);
        }
        //protected void ValidateProducts()
        //{
        //    RuleFor(s => s.Products).NotEmpty().WithMessage("products must not be empty")
        //        .NotNull().WithMessage("Amount must be  not  Null ")
        //        .Must(s=>HaveItems(s)).WithMessage("count of saved products must be  more  than zero");
        //}
        protected static bool HaveItems(ICollection<Product> Products)
        {
            return Products.Count>0;
        }
        //protected int  AmountEqualsDetailsAmounts(ICollection<SaleProducts> Products)
        //{
        //    return Products.Count;
        //}

    }
}
