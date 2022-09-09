
using System;
using System.ComponentModel.DataAnnotations;

namespace Aksaty.Application.Helpers
{
    public class NullableEmailAddress : ValidationAttribute
    {
        protected override ValidationResult IsValid(object value, ValidationContext validationContext)
        {
            string input = Convert.ToString(value);
            var emailAddressAttribute = new EmailAddressAttribute();
            if (!string.IsNullOrEmpty(input)&&!emailAddressAttribute.IsValid(input)) return new ValidationResult(emailAddressAttribute.ErrorMessage);
            return ValidationResult.Success;
        }
    }
}
