namespace Aksaty.Domain.Commands.Validations
{
    public class AddUpdateTanentCommandValidation : TanentValidation<AddUpdateTanentCommand>
    {
        public AddUpdateTanentCommandValidation()
        {
            //ValidateId();
            ValidateName();
            //ValidatePerecntage();
            //ValidateMonthCount();
        }
    }
}