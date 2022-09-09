using Aksaty.Domain.Attachments.Commands;
using Aksaty.Domain.Attachments.Events;
using Aksaty.Domain.Attachments.Interfaces;
using Aksaty.Domain.Attachments.Models;
using Aksaty.Domain.Attachments.Queries;
using Aksaty.Infra.CrossCutting.Util;
using FluentValidation.Results;
using MediatR;
using NetDevPack.Messaging;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace Aksaty.Domain.Attachments.Handlers
{
    public class AttachmentCommandsHandler :
        CommandHandler,
        IRequestHandler<AddAttachmentCommand, ValidationResult>,
        IRequestHandler<RemoveRestoreAttachmentCommand, ValidationResult>,
        IRequestHandler<RemoveRestoreListAttachmentsCommand, ValidationResult>,
        IRequestHandler<SaveAllAttachmentsCommand, ValidationResult>,
        IRequestHandler<GetAttachmentQuery, Attachment>,
        IRequestHandler<GetAllAttachmentsQuery, PagedList<Attachment>>
    {
        private readonly IAttachmentRepository _repository;
        public AttachmentCommandsHandler(IAttachmentRepository attachmentRepository)
        {
            _repository = attachmentRepository;
        }
        public async Task<ValidationResult> Handle(AddAttachmentCommand request, CancellationToken cancellationToken)
        {
            if (!request.ValidationResult.IsValid) return request.ValidationResult;
            var attachment = new Attachment(
                id: request.Id,
                type: request.Type, description: request.Description,
                url: request.URL, deleted: request.Deleted,
                systemFileName: request.SystemFileName, sourceFileName: request.SourceFileName, 
                seoFileName: request.SeoFileName, subFolder: request.SubFolder, 
                fileExtension: request.FileExtension, mediaTypeId: request.MediaTypeId, 
                thumbUrl: request.ThumbURL, tags: request.Tags,createdById:request.CreatedById,
                tanentId:request.TanentId,
                createdAt:request.CreatedAt,showOnWebsite:request.ShowOnWebsite
                );
            attachment.AddDomainEvent(
                new AttachmentAddedEvent(
                id: attachment.Id,
                type: attachment.Type, description: attachment.Description,
                url: attachment.URL, deleted: attachment.Deleted,
                systemFileName: attachment.SystemFileName, sourceFileName: attachment.SourceFileName,
                seoFileName: attachment.SeoFileName, subFolder: attachment.SubFolder,
                fileExtension: attachment.FileExtension, mediaTypeId: attachment.MediaTypeId,
                thumbUrl: attachment.ThumbURL, tags: attachment.Tags,
                createdById: attachment.CreatedById, tanentId: attachment.TanentId,
                createdAt: attachment.CreatedAt, showOnWebsite: attachment.ShowOnWebsite
                    )
                );
            _repository.Add(attachment);
            return ValidationResult;
        }

        public async Task<ValidationResult> Handle(RemoveRestoreAttachmentCommand request, CancellationToken cancellationToken)
        {
            if (!request.ValidationResult.IsValid) return request.ValidationResult;
            return await RemoveAttachment(request);

        }

        public async Task<Attachment> Handle(GetAttachmentQuery request, CancellationToken cancellationToken)
        {
            return await _repository.GetById(request.Id);
        }

        public Task<PagedList<Attachment>> Handle(GetAllAttachmentsQuery request, CancellationToken cancellationToken)
        {
                return _repository.GetAll(request);
        }
        public Task<ValidationResult> Handle(SaveAllAttachmentsCommand request, CancellationToken cancellationToken)
        {
            return Commit(_repository.UnitOfWork);
        }

        public async Task<ValidationResult> Handle(RemoveRestoreListAttachmentsCommand request, CancellationToken cancellationToken)
        {
            if (request.RemoveRestoreAttachmentCommands.Count>0)
            {
                var result = ValidationResult;
                foreach (var attachment in request.RemoveRestoreAttachmentCommands)
                {
                    attachment.Delete = request.Delete;
                    result =await RemoveAttachment(attachment);
                }
                return result;
            }
            AddError("No attachments were found");
            return ValidationResult;
        }
        private async Task<ValidationResult> RemoveAttachment(RemoveRestoreAttachmentCommand query)
        {
            var attachment = await _repository.GetById(query.Id);
            if (attachment != null)
            {
                if (attachment.Deleted != query.Delete)
                {
                    attachment.Deleted = query.Delete;
                    if (query.Delete)
                    {
                        attachment.AddDomainEvent(new AttachmentRemovedEvent(id: query.Id, createdById: query.CreatedById, tanentId: query.TanentId, createdAt: query.CreatedAt, showOnWebsite: query.ShowOnWebsite,delete:query.Delete, deleted: query.Deleted));
                    }
                    else
                    {
                        attachment.AddDomainEvent(new AttachmentRestoredEvent(id: query.Id, createdById: query.CreatedById, tanentId: query.TanentId, createdAt: query.CreatedAt, showOnWebsite: query.ShowOnWebsite, delete: query.Delete, deleted: query.Deleted));
                    }
                    _repository.Update(attachment);
                    return await Commit(_repository.UnitOfWork);
                }
                else
                {
                    return ValidationResult;
                }

            }
            else
            {
                AddError("Attachment was not found.");
                return ValidationResult;
            }
        }
    }
}
