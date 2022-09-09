using System;
using System.Collections.Generic;
using System.IO;
using System.Text;

namespace Aksaty.Infra.CrossCutting.Util
{
    public static class AttachmentUrlHelper
    {
        /// <summary>
        /// Gets the path of the attachment in wwwrooot
        /// </summary>
        /// <param name="rootPath"></param>
        /// <returns></returns>
        public static string GetAttachmentRootPath(string tanentId, string userId)
        {
           return $@"Upload\{($@"{tanentId}_{userId}\")}Attachments";
        }
        /// <summary>
        /// Gets Relative Path of the attachment
        /// </summary>
        /// <param name="rootPath"></param>
        /// <returns></returns>
        public static string GetAttachmentRelativePath(string tanentId, string userId, string fileName,string fileExtension)
        {
            return $@"{MyHttpContext.AppBaseUrl}\{GetAttachmentRootPath(tanentId, userId)}\{fileName}{fileExtension}";
        }
    }
}
