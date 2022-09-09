using Aksaty.Domain.Attachments.Models;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace Aksaty.Application.ViewModels
{
    public class AttachmentCreateViewModel:AttachmentViewModelBase
    {
        public Guid Id { get; set; }
        public string Description { get; set; }
    }
}
