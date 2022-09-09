using Aksaty.Infra.CrossCutting.Util;
using System;
using System.Collections.Generic;
using System.IO;
using System.Text;

namespace Aksaty.Application.ViewModels
{
    public abstract class AttachmentViewModelBase:BaseEntityViewModel
    {
        public string FileName { get; set; }
        public string SourceFileName { get; set; }
        public string FileExtension { get; set; }
        public string Url { get; set; }
        /// <summary>
        /// Gets absolutePath of the attachment
        /// </summary>
        /// <param name="rootPath"></param>
        /// <returns></returns>
        public string GetAttachmentAbsolutePath(string rootPath, string tanentId, string userId)
        {
            var directoryPath = Path.Combine(rootPath,AttachmentUrlHelper.GetAttachmentRootPath(tanentId,userId));
            Directory.CreateDirectory(directoryPath);
            return Path.Combine(directoryPath, $"{FileName}{FileExtension}");
        }
    }
}
