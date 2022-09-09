using Aksaty.Application.Interfaces;
using Aksaty.Domain.Attachments.Commands;
using Aksaty.Domain.Attachments.Models;
using AutoMapper;
using NetDevPack.Mediator;
using System;
using System.Threading.Tasks;
using FluentValidation.Results;
using MediatR;
using Aksaty.Domain.Attachments.Queries;
using Aksaty.Infra.CrossCutting.Util;
using Aksaty.Application.ViewModels;
using System.Collections.Generic;

namespace Aksaty.Application.Services
{
    public class AttachmentAppService : IAttachmentAppService
    {
        private readonly IMapper _mapper;
        private readonly IMediatorHandler _mediatorHelper;
        private readonly IMediator _mediator;
        public AttachmentAppService(IMapper mapper, IMediator mediator, IMediatorHandler mediatorHandler)
        {
            _mapper = mapper;
            _mediator = mediator;
            _mediatorHelper = mediatorHandler;
        }
        public async Task Add(AttachmentCreateViewModel attachment)
        {
            await _mediatorHelper.SendCommand(_mapper.Map<AddAttachmentCommand>(attachment));
        }
        public async Task<AttachmentViewModel> GetById(Guid id)
        {
            var attachment = await _mediator.Send<Attachment>(new GetAttachmentQuery(id));
            return _mapper.Map<AttachmentViewModel>(attachment);
        }
        public async Task<PagedList<AttachmentViewModel>> GetAll(GetAllAttachmentsViewModel getAllViewModel)
        {
            var query = _mapper.Map<GetAllAttachmentsQuery>(getAllViewModel);
            var attachments = await _mediator.Send(query);
            return _mapper.Map<PagedList<AttachmentViewModel>>(attachments);
        }
        public Task<ValidationResult> Remove(Guid id,bool Delete)
        {
            return _mediatorHelper.SendCommand(new RemoveRestoreAttachmentCommand(id,Delete));
        }
        public Task<ValidationResult> RemoveList(List<AttachmentViewModel> attachments,bool delete)
        {
            return _mediatorHelper.SendCommand(new RemoveRestoreListAttachmentsCommand(_mapper.Map<List<RemoveRestoreAttachmentCommand>>(attachments), delete));
        }
        
        public Task<ValidationResult> SaveAll()
        {
            return _mediatorHelper.SendCommand(new SaveAllAttachmentsCommand());
        }
    }
}
