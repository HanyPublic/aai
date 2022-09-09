using Aksaty.Domain.Attachments.Models;
using Microsoft.AspNetCore.Http;
using System;
using System.Collections.Generic;
using System.Text;

namespace Aksaty.Application.ViewModels
{
    public class AttachmentUploadViewModel:BaseEntityViewModel
    {
        public IFormFileCollection Files { get; set; }
    }
}
