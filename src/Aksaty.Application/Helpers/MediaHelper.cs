using Aksaty.Application.ViewModels;
using Aksaty.Domain.Attachments.Models;
using Aksaty.Infra.CrossCutting.Util;
using System;
using System.Collections.Generic;
using System.Text;

namespace Aksaty.Application.Helpers
{
    public class MediaHelper
    {
        public static string CreateMediaURL(Attachment attachment)
        {
            if (attachment == null)
            {
                return string.Empty;
            }

            return getMediaURL(attachment.URL ,attachment.TanentId, attachment.CreatedById, attachment.SystemFileName, attachment.FileExtension);
        }
        public static string CreateMediaURL(AttachmentCreateViewModel attachment)
        {
            if (attachment == null)
            {
                return string.Empty;
            }
            return getMediaURL(attachment.Url ,attachment.TanentId, attachment.CreatedById, attachment.FileName, attachment.FileExtension);
        }
        private static string getMediaURL(string url, string tanentId,string userId,string fileName,string fileExtension)
        {
            return (url ?? AttachmentUrlHelper.GetAttachmentRelativePath(tanentId, userId, fileName, fileExtension));
        }
    }
}
