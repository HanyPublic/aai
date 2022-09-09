using Aksaty.Application.Interfaces;
using Aksaty.Application.ViewModels;
using FluentValidation.Results;
using MediatR;
using NetDevPack.Mediator;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;
using Aksaty.Domain.Tanents.Queries;
using Aksaty.Domain.Commands;
using Aksaty.Domain.Models;
using AutoMapper;
using Aksaty.Domain.Queries;
using Aksaty.Infra.CrossCutting.Util;

namespace Aksaty.Application.Services
{
    /// <summary>
    /// Tanent Service
    /// Communicates with tanent handler
    /// </summary>
    public class TanentAppService : ITanentAppService
    {
        private readonly IMediatorHandler _mediatorHandler;
        private readonly IMediator _mediator;
        private readonly IMapper _mapper;
        public TanentAppService(IMediatorHandler mediatorHandler, IMediator mediator, IMapper mapper)
        {
            _mediatorHandler = mediatorHandler;
            _mediator = mediator;
            _mapper = mapper;
        }
        public async Task<PagedList<TanentViewModel>> GetAll(GetAllTanentsViewModel getAllTanentsViewModel)
        {
            var query = _mapper.Map<GetAllTanentsQuery>(getAllTanentsViewModel);
            var tanents = await _mediator.Send(query);
            return _mapper.Map<PagedList<TanentViewModel>>(tanents);
        }
        public async Task<TanentViewModel> GetByUserId(string userId)
        {
            var getQuery = new GetTanentByIdQuery(userId);
            return _mapper.Map<TanentViewModel>(await _mediator.Send<Tanent>(getQuery));
        }
        public async Task<ValidationResult> AddUpdate(AddTanentViewModel tanentViewModel)
        {
            try
            {
                var query = _mapper.Map<AddUpdateTanentCommand>(tanentViewModel);
                return await _mediatorHandler.SendCommand(query);
            }
            catch (Exception e)
            {
                throw e;
            }

        }
        public void Dispose()
        {
            GC.SuppressFinalize(this);
        }

    }
}
