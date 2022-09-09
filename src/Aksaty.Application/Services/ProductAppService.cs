using Aksaty.Application.Interfaces;
using Aksaty.Application.ViewModels;
using Aksaty.Domain.Commands;
using Aksaty.Domain.Queries;
using Aksaty.Infra.CrossCutting.Util;
using AutoMapper;
using FluentValidation.Results;
using MediatR;
using NetDevPack.Mediator;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace Aksaty.Application.Services
{
    public class ProductAppService : IProductAppService
    {
        private readonly IMapper _mapper;
        private readonly IMediatorHandler _mediatorHelper;
        private readonly IMediator _mediator;
        public ProductAppService(IMapper mapper, IMediatorHandler mediatorHandler, IMediator mediator)
        {
            _mapper = mapper;
            _mediatorHelper = mediatorHandler;
            _mediator = mediator;
        }
        public async Task<ValidationResult> Add(AddProductViewModel prdocutViewModel)
        {
       return await _mediatorHelper.SendCommand(_mapper.Map<AddProductCommand>(prdocutViewModel));
        }

        public async Task<PagedList<ProductViewModel>> GetAll(GetAllProductsViewModel getAllProductsViewModel)
        {
            return _mapper.Map<PagedList<ProductViewModel>>(await _mediator.Send(_mapper.Map<GetAllProductsQuery>(getAllProductsViewModel)));
        }

        public async Task<ProductViewModel> GetById(GetProductViewModel getProductViewModel)
        {
            return _mapper.Map<ProductViewModel>(await _mediator.Send(_mapper.Map<GetProductQuery>(getProductViewModel)));
        }

        public async Task<ValidationResult> Remove(Guid id)
        {
            return await _mediatorHelper.SendCommand(new RemoveProductCommand(id));
        }

        public async Task<ValidationResult> Update(ProductViewModel productViewModel)
        {
            return await _mediatorHelper.SendCommand(_mapper.Map<UpdateProductCommand>(productViewModel));

        }
    }
}
