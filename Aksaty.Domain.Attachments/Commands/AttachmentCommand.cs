using NetDevPack.Messaging;
using System;
using System.Collections.Generic;
using System.Text;
using Aksaty.Domain.Attachments.Models;
using Aksaty.Infra.CrossCutting.Util;

namespace Aksaty.Domain.Attachments.Commands
{
    public class AttachmentCommand:BaseEntityCommand
    {
        public Guid Id { get; protected set; }
        public string Type { get; protected set; }
        public string Description { get; protected set; }
        public string URL { get; protected set; }
        public string SystemFileName { get; protected set; }
        public string SourceFileName { get; protected set; }
        public string SeoFileName { get; protected set; }
        public string SubFolder { get; protected set; }
        public string FileExtension { get; protected set; }
        public int MediaTypeId { get; protected set; }
        public string ThumbURL { get; protected set; }
        public string Tags { get; protected set; }
    }
}
