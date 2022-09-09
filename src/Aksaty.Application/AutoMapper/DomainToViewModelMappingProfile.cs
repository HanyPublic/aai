using AutoMapper;
using Aksaty.Application.ViewModels;
using Aksaty.Domain.Models;
using Aksaty.Domain.Attachments.Models;
using Aksaty.Infra.CrossCutting.Util;
using System.Linq;
using Microsoft.AspNetCore.Identity;

namespace Aksaty.Application.AutoMapper
{
    public class DomainToViewModelMappingProfile : Profile
    {
        public DomainToViewModelMappingProfile()
        {
            #region User
            CreateMap<IdentityUser, UserViewModel>();
            #endregion

            #region Customer
            CreateMap<CustomerAttachment, AttachmentViewModel>().ConstructUsing(src=>AttachmentViewModel.fromCustomerAttachment(src)).ForMember(d => d.Url, opt => opt.MapFrom(src => Helpers.MediaHelper.CreateMediaURL(src.Attachment)));
            CreateMap<Customer, CustomerViewModel>().ForMember(d => d.ImageUrl, opt => opt.MapFrom(src => Helpers.MediaHelper.CreateMediaURL(src.Image))).ForMember(d => d.Attachments, opt => opt.MapFrom(src => src.Attachments));
            CreateMap<PagedList<Customer>, PagedList<CustomerViewModel>>().ForMember(d => d.Items, opt => opt.MapFrom(src => src.Items));

            #endregion


            #region Tanent
            CreateMap<Tanent, TanentViewModel>().ForMember(d => d.ImageUrl, opt => opt.MapFrom(src => Helpers.MediaHelper.CreateMediaURL(src.Image))); ;
            CreateMap<PagedList<Tanent>, PagedList<TanentViewModel>>();
            #endregion


            #region Attachment
            CreateMap<Attachment, AttachmentViewModel>()
          .ForMember(d => d.Url, opt => opt.MapFrom(src => Helpers.MediaHelper.CreateMediaURL(src)))
          .ForMember(d => d.FileName, opt => opt.MapFrom(src => src.SystemFileName));
            CreateMap<PagedList<Attachment>, PagedList<AttachmentViewModel>>();
            #endregion

            #region Sales
            #region Sale
            CreateMap<Sale, SaleViewModel>()
                .ForMember(dest=>dest.SaleInstallments,opt=>opt.MapFrom(src=>src.SaleInstallments.OrderBy(si=>si.DueDate)))
                .ForMember(dest=>dest.Products,act=>act.MapFrom(src=>src.SalesProducts.Select(sp=>sp.Product)));
            CreateMap<PagedList<Sale>, PagedList<SaleViewModel>>();
            #endregion
            #region SaleInstallment
            CreateMap<SaleInstallment, SaleSaleInstallmentViewModel>();
            CreateMap<SaleInstallment, SaleInstallmentViewModel>();
            CreateMap<PagedList<SaleInstallment>, PagedList<SaleInstallmentViewModel>>();
            #endregion
            #region Product
            CreateMap<Product, ProductViewModel>().ForMember(d => d.ImageUrl, opt => opt.MapFrom(src => Helpers.MediaHelper.CreateMediaURL(src.Image)));
            CreateMap<PagedList<Product>, PagedList<ProductViewModel>>();
            #endregion
            #endregion

        }
       
    }
}
