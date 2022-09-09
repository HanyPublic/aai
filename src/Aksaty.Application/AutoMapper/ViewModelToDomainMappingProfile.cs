using AutoMapper;
using Aksaty.Domain.Commands;
using Aksaty.Domain.Attachments.Commands;
using Aksaty.Domain.Attachments.Queries;
using Aksaty.Domain.Customer.Commands;
using Aksaty.Application.ViewModels;
using Aksaty.Domain.Queries;
using Aksaty.Domain.Models;

namespace Aksaty.Application.AutoMapper
{
    public class ViewModelToDomainMappingProfile : Profile
    {
        public ViewModelToDomainMappingProfile()
        {

            #region Customer
            CreateMap<AttachmentViewModel, CustomerAttachment>().ConstructUsing(src => CustomerAttachment.GetCustomerAttachment(src.Id,System.Guid.Empty));
            CreateMap<CustomerRegisterViewModel, RegisterNewCustomerCommand>()
                .ConstructUsing(c => new RegisterNewCustomerCommand(
                    c.ImageId,
                    c.Name, c.Email, c.BirthDate, c.Mobile,
                    c.Mobile2, c.Address, c.Type, c.AddRecription, c.CreatedById, c.TanentId, c.CreatedAt.Value,
                    c.ShowOnWebsite.Value,c.NationalId,c.RefId,c.Notes,c.Review ,c.Deleted.Value
                    )).ForMember(dest=>dest.Attachments,opt=>opt.MapFrom(src=>src.Attachments));
            CreateMap<CustomerViewModel, UpdateCustomerCommand>()
                .ConstructUsing(c => new UpdateCustomerCommand(
                   c.Id, c.ImageId, c.Name, c.Email, c.BirthDate, c.Mobile,
                    c.Mobile2, c.Address, c.Type, c.AddRecription,
                    c.ShowOnWebsite.Value, c.NationalId,c.RefId,c.Notes, c.Review, c.Deleted.Value
                    )).ForMember(dest => dest.Attachments, opt => opt.MapFrom(src => src.Attachments));
            CreateMap<CustomerSalesUpdateViewModel, UpdateCustomerSalesCommand>()
               .ConstructUsing(c => new UpdateCustomerSalesCommand(
                   c.Id,
                   c.Balance, c.NextInstallmentDate
                   ));
            CreateMap<GetAllCustomersViewModel, GetAllCustomersQuery>().ConstructUsing(c => new GetAllCustomersQuery(
                c.MaxBirthDate, c.MaxBirthDate, c.MinNextInstallDate, c.MaxNextInstallDate, c.MinBalance, c.MaxBalance,c.includeAttachments.Value ,c.CreatedById, c.TanentId,
                    c.ShowOnWebsite.Value, c.Deleted.Value
                ));
            #endregion

            #region Tanent 
            CreateMap<AddTanentViewModel, AddUpdateTanentCommand>()
               .ConstructUsing(s => new AddUpdateTanentCommand(
                   s.UserId,s.ImageId,
                   s.Name, s.Email, s.Mobile, s.Address,
                   s.Currency, s.MonthCount, s.Perecntage,
                   s.Logo, s.Colors, s.Note, s.SignatureArray,
                   s.StampAttachment));
            CreateMap<GetAllTanentsViewModel, GetAllTanentsQuery>().ConstructUsing(s => new GetAllTanentsQuery(
                s.MinMonthCount, s.MaxMonthCount,
                s.MinPerecntage, s.MaxPerecntage
                ));
            #endregion

            #region Attachment
            CreateMap<AttachmentCreateViewModel, AddAttachmentCommand>().ConstructUsing(a => new AddAttachmentCommand(
                a.Id, a.Description,
                a.FileName, a.SourceFileName,
                a.FileExtension, a.CreatedById, a.TanentId,
                a.CreatedAt.Value, a.ShowOnWebsite.Value, a.Deleted.Value
                ));
            CreateMap<GetAllAttachmentsViewModel, GetAllAttachmentsQuery>().ConstructUsing(a =>
            new GetAllAttachmentsQuery(a.CreatedById, a.TanentId, a.CreatedAtFrom, a.CreatedAtTo, a.ShowOnWebsite, a.Deleted));
            CreateMap<AttachmentViewModel, RemoveRestoreAttachmentCommand>().ConstructUsing(a =>
            new RemoveRestoreAttachmentCommand(a.Id, true));
            #endregion

            #region Sales
            #region Sale

            CreateMap<SaleViewModel, CreateNewSaleCommand>().ConstructUsing(s => new CreateNewSaleCommand(
                s.Id, s.CustomerId, s.StartDate,
                s.Status, s.Amount, s.PaidAmount,
                s.RemainingAmount, s.InstallmentMonthNumber, s.InstallmentValue,
                s.Percentage, s.CreatedById, s.TanentId, s.CreatedAt.Value, s.ShowOnWebsite.Value,
                s.Deleted.Value
                ))
                .ForMember(dest => dest.Products, act => act.MapFrom(src => src.Products))
                .ForMember(dest => dest.SaleInstallments, act => act.MapFrom(src => src.SaleInstallments));

            CreateMap<SaleViewModel, UpdateSaleCommand>().ConstructUsing(s => new UpdateSaleCommand(
            s.Id, s.CustomerId, s.StartDate,
            s.Status, s.Amount, s.PaidAmount,
            s.RemainingAmount, s.InstallmentMonthNumber, s.InstallmentValue,
            s.Percentage, s.ShowOnWebsite.Value, s.Deleted.Value
            )).ForMember(dest => dest.Products, act => act.MapFrom(src => src.Products))
            .ForMember(dest => dest.SaleInstallments, act => act.MapFrom(src => src.SaleInstallments));

            CreateMap<GetSaleViewModel, GetSaleQuery>().ConstructUsing(s => new GetSaleQuery(s.Id, s.IncludeSaleInstallments.HasValue, s.IncludeProducts.HasValue, s.IncludeCustomers.HasValue));
            CreateMap<GetAllSalesViewModel, GetAllSalesQuery>().ConstructUsing(s => new GetAllSalesQuery(
                s.CustomerId,
                s.MinStartDate, s.MaxStartDate, s.MinAmount,
                s.MaxAmount, s.MinPaidAmount, s.MaxPaidAmount, s.MinRemainingAmount,
                s.MaxRemainingAmount, s.MinInstallmentMonthNumber, s.MaxInstallmentMonthNumber, s.MinInstallmentValue,
                s.MaxInstallmentValue, s.IncludeSaleInstallments, s.IncludeProducts, s.IncludeCustomers, s.CreatedById, s.TanentId, s.ShowOnWebsite.Value,
                s.Deleted.Value, s.CreatedAtFrom, s.CreatedAtTo
                ));
            CreateMap<AddSaleViewModel, SaleViewModel>();
            #endregion
            #region SaleInstallment

            CreateMap<SaleInstallmentViewModel, SaleInstallment>();
            CreateMap<SaleSaleInstallmentViewModel, SaleInstallment>();

            CreateMap<AddSaleInstallmentViewModel, AddSaleInstallmentCommand>().ConstructUsing(s => new AddSaleInstallmentCommand(
                 s.SaleId, s.Amount,
                 s.DueDate, s.Status,
                 s.CreatedById, s.TanentId,
                 s.CreatedAt.Value, s.ShowOnWebsite.Value,
                 s.Deleted.Value
                 ));
            CreateMap<SaleInstallmentViewModel, UpdateSaleInstallmentCommand>().ConstructUsing(s => new UpdateSaleInstallmentCommand(
               s.Id,
               s.SaleId, s.Amount,
               s.DueDate, s.Status,
               s.ShowOnWebsite.Value, s.Deleted.Value
               ));

            CreateMap<SaleInstallmentViewModel, UpdateSaleInstallmentStatusCommand>().ConstructUsing(s => new UpdateSaleInstallmentStatusCommand(
               s.Id,
               s.SaleId, s.Amount,
               s.DueDate, s.Status,
               s.ShowOnWebsite.Value, s.Deleted.Value
               ));
            CreateMap<GetSaleInstallmentViewModel, GetSaleInstallmentQuery>().ConstructUsing(i => new GetSaleInstallmentQuery(i.Id, i.IncludeSale));
            CreateMap<GetAllSaleInstallmentViewModel, GetAllSaleInstallmentQuery>().ConstructUsing(i => new GetAllSaleInstallmentQuery(
                i.SaleId, i.CustomerId, i.MinDueDate, i.MaxDueDate,
                i.MinAmount, i.MaxAmount, i.IncludeSales,
                i.CreatedById, i.TanentId, i.ShowOnWebsite.Value,
                i.Deleted.Value, i.CreatedAtFrom, i.CreatedAtTo
                ));

            #endregion
            #region Product 

            CreateMap<ProductViewModel, Product>();

            CreateMap<AddProductViewModel, AddProductCommand>().ConvertUsing(p => new AddProductCommand(
                p.ImageId,p.Name,
                p.Amount, p.Category,
                p.TanentId, p.CreatedById,
                p.CreatedAt.Value, p.ShowOnWebsite.Value,
                p.Deleted.Value
                ));
            CreateMap<ProductViewModel, UpdateProductCommand>().ConvertUsing(p => new UpdateProductCommand(
              p.Id,p.ImageId, p.Name,
              p.Amount, p.Category,
              p.ShowOnWebsite.Value,
              p.Deleted.Value
              ));
            CreateMap<GetProductViewModel, GetProductQuery>().ConstructUsing(i => new GetProductQuery(i.Id, i.IncludeSales.HasValue));
            CreateMap<GetAllProductsViewModel, GetAllProductsQuery>().ConstructUsing(p => new GetAllProductsQuery(
                p.MaxAmount, p.MinAmount, p.IncludeSales,
                p.CreatedAtFrom, p.CreatedAtTo
                ));

            #endregion
            #endregion
        }
    }
}
