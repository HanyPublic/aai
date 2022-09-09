
namespace Aksaty.Domain.Commands.Validations
{
    public class UpdateSaleCommandValidation : SaleValidation<UpdateSaleCommand> 
    {
        public UpdateSaleCommandValidation()
        {
            ValidateId();
            ValidateAmount();
            ValidatePaidAmount();
        }
    }
}
