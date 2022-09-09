using Aksaty.Application.Interfaces;
using Aksaty.Application.Services;
using Aksaty.Domain.Attachments.Commands;
using Aksaty.Domain.Attachments.Events;
using Aksaty.Domain.Attachments.Handlers;
using Aksaty.Domain.Attachments.Interfaces;
using Aksaty.Domain.Attachments.Models;
using Aksaty.Domain.Attachments.Queries;
using Aksaty.Domain.Commands;
using Aksaty.Domain.Core.Events;
using Aksaty.Domain.Customer.Commands;
using Aksaty.Domain.Events;
using Aksaty.Domain.Interfaces;
using Aksaty.Domain.Models;
using Aksaty.Domain.Tanents.Handlers;
using Aksaty.Domain.Tanents.Queries;
using Aksaty.Infra.CrossCutting.Bus;
using Aksaty.Infra.Data.Context;
using Aksaty.Infra.Data.EventSourcing;
using Aksaty.Infra.Data.Repository;
using Aksaty.Infra.Data.Repository.EventSourcing;
using FluentValidation.Results;
using MediatR;
using Microsoft.AspNetCore.Http;
using Microsoft.Extensions.DependencyInjection;
using NetDevPack.Mediator;
using System.Collections.Generic;
using Aksaty.Infra.CrossCutting.Util;
using Aksaty.Domain.Handlers;
using Aksaty.Domain.Queries;

namespace Aksaty.Infra.CrossCutting.IoC
{
    public static class NativeInjectorBootStrapper
    {
        public static void RegisterServices(IServiceCollection services)
        {
            // Domain Bus (Mediator)
            services.AddScoped<IMediatorHandler, InMemoryBus>();

            // Application
            services.AddScoped<ICustomerAppService, CustomerAppService>();
            services.AddScoped<ITanentAppService, TanentAppService>();
            services.AddScoped<ISaleAppService, SaleAppService>();
            services.AddScoped<IProductAppService, ProductAppService>();
            services.AddScoped<ISaleInstallmentAppService, SaleInstallmentAppService>();
            services.AddScoped<IAttachmentAppService, AttachmentAppService>();
            services.AddScoped<IUserService, UserService>();
            services.AddSingleton<IHttpContextAccessor, HttpContextAccessor>();



            // Domain - Events
            // customer
            services.AddScoped<INotificationHandler<CustomerRegisteredEvent>, CustomerEventHandler>();
            services.AddScoped<INotificationHandler<CustomerUpdatedEvent>, CustomerEventHandler>();
            services.AddScoped<INotificationHandler<CustomerRemovedEvent>, CustomerEventHandler>();

                               //sale
            services.AddScoped<INotificationHandler<SaleCreatedEvent>, SaleEventHandler>();
            services.AddScoped<INotificationHandler<SaleUpdateEvent>, SaleEventHandler>();
            services.AddScoped<INotificationHandler<SaleRemovedEvent>, SaleEventHandler>();

            services.AddScoped<INotificationHandler<TanentRegisteredEvent>, TanentEventHandler>();
            services.AddScoped<INotificationHandler<TanentUpdatedEvent>, TanentEventHandler>();
            services.AddScoped<INotificationHandler<TanentRemovedEvent>, TanentEventHandler>();

            services.AddScoped<INotificationHandler<AttachmentAddedEvent>, AttachmentEventHandler>();
            services.AddScoped<INotificationHandler<AttachmentRemovedEvent>, AttachmentEventHandler>();

            // Domain - Commands
 

            //Customer
                               
 
            services.AddScoped<IRequestHandler<RegisterNewCustomerCommand, ValidationResult>, CustomerCommandHandler>();
            services.AddScoped<IRequestHandler<UpdateCustomerCommand, ValidationResult>, CustomerCommandHandler>();
            services.AddScoped<IRequestHandler<UpdateCustomerSalesCommand, ValidationResult>, CustomerCommandHandler>();
            services.AddScoped<IRequestHandler<RemoveCustomerCommand, ValidationResult>, CustomerCommandHandler>();

            //Sale
            services.AddScoped<IRequestHandler<GetAllSalesQuery, PagedList<Sale>>, SaleCommandHandler>();
            services.AddScoped<IRequestHandler<GetSaleQuery, Sale>, SaleCommandHandler>();
            services.AddScoped<IRequestHandler<CreateNewSaleCommand, ValidationResult>, SaleCommandHandler>();
            services.AddScoped<IRequestHandler<UpdateSaleCommand, ValidationResult>, SaleCommandHandler>();
            services.AddScoped<IRequestHandler<RemoveSaleCommand, ValidationResult>, SaleCommandHandler>();

            //SaleInstalmment
            services.AddScoped<IRequestHandler<GetAllSaleInstallmentQuery, PagedList<SaleInstallment>>, SaleInstallmentCommandsHandler>();
            services.AddScoped<IRequestHandler<GetSaleInstallmentQuery, SaleInstallment>, SaleInstallmentCommandsHandler>();
            services.AddScoped<IRequestHandler<AddSaleInstallmentCommand, ValidationResult>, SaleInstallmentCommandsHandler>();
            services.AddScoped<IRequestHandler<UpdateSaleInstallmentCommand, ValidationResult>, SaleInstallmentCommandsHandler>();
            services.AddScoped<IRequestHandler<RemoveSaleInstallmentCommand, ValidationResult>, SaleInstallmentCommandsHandler>();
            //Product
            services.AddScoped<IRequestHandler<GetAllProductsQuery, PagedList<Product>>, ProductCommandHandler>();
            services.AddScoped<IRequestHandler<GetProductQuery, Product>, ProductCommandHandler>();
            services.AddScoped<IRequestHandler<AddProductCommand, ValidationResult>, ProductCommandHandler>();
            services.AddScoped<IRequestHandler<UpdateProductCommand, ValidationResult>, ProductCommandHandler>();
            services.AddScoped<IRequestHandler<RemoveProductCommand, ValidationResult>, ProductCommandHandler>();
            //Tanent
            services.AddScoped<IRequestHandler<GetTanentByIdQuery, Tanent>, TanentCommandsHandler>();
            services.AddScoped<IRequestHandler<AddUpdateTanentCommand, ValidationResult>, TanentCommandsHandler>();

            //Attachment
            services.AddScoped<IRequestHandler<GetAllAttachmentsQuery, PagedList<Attachment>>, AttachmentCommandsHandler>();
            services.AddScoped<IRequestHandler<GetAttachmentQuery, Attachment>, AttachmentCommandsHandler>();
            services.AddScoped<IRequestHandler<AddAttachmentCommand, ValidationResult>, AttachmentCommandsHandler>();
            services.AddScoped<IRequestHandler<RemoveRestoreAttachmentCommand, ValidationResult>, AttachmentCommandsHandler>(); 
            services.AddScoped<IRequestHandler<RemoveRestoreListAttachmentsCommand, ValidationResult>, AttachmentCommandsHandler>(); 
            services.AddScoped<IRequestHandler<SaveAllAttachmentsCommand, ValidationResult>, AttachmentCommandsHandler>();

            // Infra - Data
            services.AddScoped<ICustomerRepository, CustomerRepository>();
            services.AddScoped<ISaleRepository, SaleRepository>();
            services.AddScoped<ISaleInstallmentRepository, SaleInstallmentRepository>();
            services.AddScoped<ISalesProductsRepository, SalesProductsRepository>();
            services.AddScoped<IProductRepository, ProductRepository>();
            services.AddScoped<ITanentRepository, TanentRepository>();
            services.AddScoped<IAttachmentRepository, AttachmentRepository>();
            services.AddScoped<AksatyContext>();

            // Infra - Data EventSourcing
            services.AddScoped<IEventStoreRepository, EventStoreSqlRepository>();
            services.AddScoped<IEventStore, SqlEventStore>();
            services.AddScoped<EventStoreSqlContext>();
        }
    }
}