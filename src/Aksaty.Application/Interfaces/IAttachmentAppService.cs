using Aksaty.Application.ViewModels;
using Aksaty.Infra.CrossCutting.Util;
using FluentValidation.Results;
using System;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace Aksaty.Application.Interfaces
{
    public interface IAttachmentAppService
    {
        Task<AttachmentViewModel> GetById(Guid id);
        Task<PagedList<AttachmentViewModel>> GetAll(GetAllAttachmentsViewModel getAllViewModel);
        Task Add(AttachmentCreateViewModel attachment);
        Task<ValidationResult> Remove(Guid id,bool Deleted); 
        Task<ValidationResult> RemoveList(List<AttachmentViewModel> attachments,bool delete); 
         Task<ValidationResult> SaveAll();
    }
}
