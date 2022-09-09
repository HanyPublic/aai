using System;
using Aksaty.Domain.Commands.Validations;

namespace Aksaty.Domain.Commands
{
    public class AddUpdateTanentCommand : TanentCommand
    {
        public AddUpdateTanentCommand(string userId,string imageId,string name, string email, string mobile, string address, string currency, int monthCount, decimal perecntage, string logo, string colors, string note, string signatureArray, string stampAttachment)
        {
            ImageId = imageId;
            UserId = userId;
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
        /// <summary>
        /// Validates Command
        /// </summary>
        /// <returns>boolean validation result</returns>
        public override bool IsValid()
        {
            ValidationResult = new AddUpdateTanentCommandValidation().Validate(this);
            return ValidationResult.IsValid;
        }
    }
}