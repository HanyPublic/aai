using Aksaty.Domain.Commands;
using Aksaty.Domain.Events;
using Aksaty.Domain.Interfaces;
using Aksaty.Domain.Tanents.Queries;
using FluentValidation.Results;
using MediatR;
using NetDevPack.Messaging;
using System;
using System.Collections.Generic;
using System.Threading;
using System.Threading.Tasks;
using Aksaty.Domain.Models;
using Aksaty.Infra.CrossCutting.Util;

namespace Aksaty.Domain.Tanents.Handlers
{
    /// <summary>
    /// Tanent commands and queries handlers
    /// Communicates with Tanent Repository direcly
    /// </summary>
    public class TanentCommandsHandler : CommandHandler,
        IRequestHandler<GetTanentByIdQuery, Tanent>,
        IRequestHandler<AddUpdateTanentCommand, ValidationResult>
    {

        private readonly ITanentRepository _TanentRepository;
        public TanentCommandsHandler(ITanentRepository TanentRepository)
        {
            _TanentRepository = TanentRepository;
        }
        /// <summary>
        /// Returns tanent by Id from repo
        /// </summary>
        /// <param name="request"></param>
        /// <param name="cancellationToken"></param>
        /// <returns></returns>
        public async Task<Tanent> Handle(GetTanentByIdQuery request, CancellationToken cancellationToken)
        {
            return await _TanentRepository.GetByUserId(request.UserId);
        }
        /// <summary>
        /// Updates tanent , adds update event
        /// </summary>
        /// <param name="message"></param>
        /// <param name="cancellationToken"></param>
        /// <returns></returns>
        public async Task<ValidationResult> Handle(AddUpdateTanentCommand message, CancellationToken cancellationToken)
        {
            if (!message.IsValid()) return message.ValidationResult;
            Guid? imageId = null;
            if (!string.IsNullOrEmpty(message.ImageId)) imageId = Guid.Parse(message.ImageId);
            var currentTanent = await _TanentRepository.GetByUserId(message.UserId);
            if (currentTanent != null)
            {
                currentTanent.Update(
                   name: message.Name, imageId: imageId, email: message.Email,
                   mobile: message.Mobile, address: message.Address, currency: message.Currency,
                   monthCount: message.MonthCount, perecntage: message.Perecntage, logo: message.Logo,
                   colors: message.Colors, note: message.Note, signatureArray: message.SignatureArray,
                   stampAttachment: message.StampAttachment);

                currentTanent.AddDomainEvent(new TanentUpdatedEvent(
                    id: currentTanent.Id, currentTanent.ImageId,
                    name: currentTanent.Name, email: currentTanent.Email, mobile: currentTanent.Mobile,
                    address: currentTanent.Address, currency: currentTanent.Currency, monthCount: currentTanent.MonthCount,
                    perecntage: currentTanent.Perecntage, logo: currentTanent.Logo, colors: currentTanent.Colors,
                    note: currentTanent.Note, signatureArray: currentTanent.SignatureArray, stampAttachment: currentTanent.StampAttachment

                    ));
                _TanentRepository.Update(currentTanent);
            }
            else
            {
                var tanent = new Tanent(
              id: Guid.NewGuid(), imageId, userId: message.UserId,
              name: message.Name, email: message.Email, mobile: message.Mobile,
              address: message.Address, currency: message.Currency, monthCount: message.MonthCount,
              perecntage: message.Perecntage, logo: message.Logo, colors: message.Colors,
              note: message.Note, signatureArray: message.SignatureArray, stampAttachment: message.StampAttachment
              );

                tanent.AddDomainEvent(new TanentRegisteredEvent(
                    id: tanent.Id, tanent.ImageId,
                    name: tanent.Name, email: tanent.Email, mobile: tanent.Mobile,
                    address: tanent.Address, currency: tanent.Currency, monthCount: tanent.MonthCount,
                    perecntage: tanent.Perecntage, logo: tanent.Logo, colors: tanent.Colors,
                    note: tanent.Note, signatureArray: tanent.SignatureArray, stampAttachment: tanent.StampAttachment
                    ));
                _TanentRepository.Add(tanent);
            }



            return await Commit(_TanentRepository.UnitOfWork);
        }
        /// <summary>
        /// Disposes of the repo instance
        /// </summary>
        public void Dispose()
        {
            _TanentRepository.Dispose();
        }
    }
}
