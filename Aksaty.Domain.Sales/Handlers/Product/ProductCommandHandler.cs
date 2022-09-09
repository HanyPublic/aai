using Aksaty.Domain.Commands;
using Aksaty.Domain.Events;
using Aksaty.Domain.Interfaces;
using Aksaty.Domain.Models;
using Aksaty.Domain.Queries;
using Aksaty.Infra.CrossCutting.Util;
using FluentValidation.Results;
using MediatR;
using NetDevPack.Messaging;
using System;
using System.Threading;
using System.Threading.Tasks;

namespace Aksaty.Domain.Handlers
{
    public class ProductCommandHandler : CommandHandler,
        IRequestHandler<GetAllProductsQuery, PagedList<Product>>,
        IRequestHandler<GetProductQuery, Product>,
        IRequestHandler<AddProductCommand, ValidationResult>,
        IRequestHandler<UpdateProductCommand, ValidationResult>,
        IRequestHandler<RemoveProductCommand, ValidationResult>
    {
        private readonly IProductRepository _productRepository;
        public ProductCommandHandler(IProductRepository productRepository)
        {
            _productRepository = productRepository;
        }
        public Task<PagedList<Product>> Handle(GetAllProductsQuery request, CancellationToken cancellationToken)
        {
            return _productRepository.GetAll(request);
        }

        public Task<Product> Handle(GetProductQuery request, CancellationToken cancellationToken)
        {
            return _productRepository.GetById(request);
        }
        public async Task<ValidationResult> Handle(AddProductCommand request, CancellationToken cancellationToken)
        {
            if (!request.IsValid()) return request.ValidationResult;
            var product = new Product(
                id: Guid.NewGuid(),
                request.ImageId,
                name: request.Name, amount: request.Amount, category: request.Category,
                request.TanentId, request.CreatedById, request.CreatedAt, request.ShowOnWebsite,
                request.Deleted);
            product.AddDomainEvent(new ProductCreatedEvent(
                id: product.Id,imageId:product.ImageId,
                name: product.Name, amount: product.Amount, category: product.Category,
                product.TanentId, product.CreatedById, product.CreatedAt, product.ShowOnWebsite,
                product.Deleted));
            _productRepository.Add(product);
            return await Commit(_productRepository.UnitOfWork);
        }

        public async Task<ValidationResult> Handle(UpdateProductCommand request, CancellationToken cancellationToken)
        {
            if (!request.IsValid()) return request.ValidationResult;
            var oldProduct =await _productRepository.GetById(request.Id);
            if (oldProduct == null) { AddError($"Product with id {request.Id} was not found"); return request.ValidationResult; }

            var product = new Product(
                   id: request.Id,imageId:request.ImageId,
                   name: request.Name, amount: request.Amount, category: request.Category,
                   oldProduct.TanentId, oldProduct.CreatedById, oldProduct.CreatedAt, request.ShowOnWebsite,
                   request.Deleted);
            product.AddDomainEvent(new ProductUpdatedEvent(
                id: product.Id,imageId:product.ImageId,
                name: product.Name, amount: product.Amount, category: product.Category,
                product.TanentId, product.CreatedById, product.CreatedAt, product.ShowOnWebsite,
                product.Deleted
                ));
            _productRepository.Update(product);
            return await Commit(_productRepository.UnitOfWork);
        }

        public async Task<ValidationResult> Handle(RemoveProductCommand request, CancellationToken cancellationToken)
        {
            if (!request.IsValid()) return request.ValidationResult;
            var product = await _productRepository.GetById(request.Id);
            if (product == null)
            {
                AddError("The requested product doesn't exist.");
                return ValidationResult;
            }
            else
            {
                product.AddDomainEvent(new ProductRemovedEvent(request.Id));
                _productRepository.Remove(product);
                return await Commit(_productRepository.UnitOfWork);
            }
        }
    }
}
