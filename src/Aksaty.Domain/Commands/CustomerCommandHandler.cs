using System;
using System.Threading;
using System.Threading.Tasks;
using Aksaty.Domain.Events;
using Aksaty.Domain.Interfaces;
using Aksaty.Domain.Models;
using FluentValidation.Results;
using MediatR;
using NetDevPack.Messaging;
using Aksaty.Domain.Customer.Commands;
using Aksaty.Domain.Customer.Events;
using System.Linq;

namespace Aksaty.Domain.Commands
{
    public class CustomerCommandHandler : CommandHandler,
        IRequestHandler<RegisterNewCustomerCommand, ValidationResult>,
        IRequestHandler<UpdateCustomerCommand, ValidationResult>,
        IRequestHandler<UpdateCustomerSalesCommand, ValidationResult>,
        IRequestHandler<RemoveCustomerCommand, ValidationResult>
    {
        private readonly ICustomerRepository _customerRepository;

        public CustomerCommandHandler(ICustomerRepository customerRepository)
        {
            _customerRepository = customerRepository;
        }

        public async Task<ValidationResult> Handle(RegisterNewCustomerCommand message, CancellationToken cancellationToken)
        {
            if (!message.IsValid()) return message.ValidationResult;

            var customer = new Aksaty.Domain.Models.Customer(
                id: Guid.NewGuid(), imageId: message.ImageId,
                name:message.Name,email: message.Email,birthDate: message.BirthDate,
                mobile:message.Mobile,mobile2: message.Mobile2,address: message.Address,
                type: message.Type,addRecription: message.AddRecription,createdById: message.CreatedById,
                tanentId:message.TanentId,createdAt: message.CreatedAt,showOnWebsite: message.ShowOnWebsite,
                deleted: message.Deleted,nationalId: message.NationalId,refId:message.RefId,notes:message.Notes,review:message.Review ,attachments:message.Attachments);

            if (await _customerRepository.GetByEmail(new Queries.GetByEmailQuery(customer.Email, customer.CreatedById, customer.TanentId, customer.ShowOnWebsite, customer.Deleted)) != null)
            {
                AddError("The customer e-mail has already been taken.");
                return ValidationResult;
            }

            customer.AddDomainEvent(new CustomerRegisteredEvent(
                 id: customer.Id,
                imageId: customer.ImageId,
                 name: customer.Name, email: customer.Email, birthDate: customer.BirthDate,
                 mobile: customer.Mobile, mobile2: customer.Mobile2, address: customer.Address,
                type: customer.Type,addRecription: customer.AddRecription, createdById: customer.CreatedById,
                tanentId: customer.TanentId,createdAt: customer.CreatedAt, showOnWebsite: customer.ShowOnWebsite,
                nationalId:customer.NationalId, refId: message.RefId, notes: message.Notes,review:message.Review, deleted: customer.Deleted
                ));

            _customerRepository.Add(customer);

            return await Commit(_customerRepository.UnitOfWork);
        }

        public async Task<ValidationResult> Handle(UpdateCustomerCommand message, CancellationToken cancellationToken)
        {
            if (!message.IsValid()) return message.ValidationResult;

            var customer = await _customerRepository.GetById(message.Id);
            if (customer == null)
            {
                AddError($"Customer with Id {message.Id} was not found.");
                return ValidationResult;
            }
            message.Attachments.ForEach(oa => { oa.CustomerId = customer.Id; } );
            var oldAttachments = customer.Attachments;
            if (oldAttachments.Count > 0) {
                var toRemoveAttachments = oldAttachments.Where(a => !message.Attachments.Any(oa => oa.AttachmentId == a.AttachmentId));
                _customerRepository.RemoveAttachments(toRemoveAttachments);
            }
            var toAddAttachments = message.Attachments.Where(a => !oldAttachments.Any(oa => oa.AttachmentId == a.AttachmentId));
            if (toAddAttachments.Count()>0)
            {
                await _customerRepository.AddAttachments(toAddAttachments);
            }

            customer.Update(message.ImageId, message.Name, message.Email,
                message.BirthDate, message.Mobile, message.Mobile2,
                message.Address, message.Type, message.AddRecription, message.NationalId, refId: message.RefId, notes: message.Notes,review:message.Review, message.ShowOnWebsite,message.Deleted);

            var existingCustomer = await _customerRepository.GetByEmail(new Queries.GetByEmailQuery(customer.Email, customer.CreatedById, customer.TanentId, customer.ShowOnWebsite, customer.Deleted));

            if (existingCustomer != null && existingCustomer.Id != customer.Id)
            {
                if (!existingCustomer.Equals(customer))
                {
                    AddError("The customer e-mail has already been taken.");
                    return ValidationResult;
                }
            }

            customer.AddDomainEvent(new CustomerUpdatedEvent(
                customer.Id, message.ImageId, customer.Name, customer.Email,
                customer.BirthDate, customer.Mobile, customer.Mobile2,
                customer.Address, customer.Type, customer.AddRecription, customer.ShowOnWebsite,customer.NationalId,customer.RefId,customer.Notes,review:customer.Review ,customer.Deleted));

           _customerRepository.Update(customer);

            return await Commit(_customerRepository.UnitOfWork);
        }

        public async Task<ValidationResult> Handle(RemoveCustomerCommand message, CancellationToken cancellationToken)
        {
            if (!message.IsValid()) return message.ValidationResult;

            var customer = await _customerRepository.GetById(message.Id);

            if (customer is null)
            {
                AddError("The customer doesn't exists.");
                return ValidationResult;
            }

            customer.AddDomainEvent(new CustomerRemovedEvent(message.Id));

            _customerRepository.Remove(customer);

            return await Commit(_customerRepository.UnitOfWork);
        }

        public void Dispose()
        {
            _customerRepository.Dispose();
        }

        public async Task<ValidationResult> Handle(UpdateCustomerSalesCommand message, CancellationToken cancellationToken)
        {
            if (!message.IsValid()) return message.ValidationResult;

            var customer = await _customerRepository.GetById(message.Id);
            if (customer == null)
            {
                AddError($"Customer with id {message.Id} was not found.");
                return ValidationResult;
            }
            customer.Update(message.Balance, message.NextInstallDate);

            customer.AddDomainEvent(new CustomerSalesUpdatedEvent(
                customer.Id,
                customer.Balance, customer.NextInstallDate));

            _customerRepository.Update(customer);

            return await Commit(_customerRepository.UnitOfWork);
        }
    }
}