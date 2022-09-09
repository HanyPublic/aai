using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Aksaty.Infra.CrossCutting.Util
{
    public static class AttachmentContentTypes
    {
        public static string GetContentType(string extension)
        {
            try
            {
                var types = GetMimeTypes();
                var ext = extension.ToLowerInvariant();
                var contentType = types[ext];
                return contentType;
            }
            catch (Exception)
            {
                return "application/octet-stream";
            }
        }

        private static Dictionary<string, string> GetMimeTypes()
        {
            return new Dictionary<string, string>
            {
                {".txt", "text/plain"},
                {".pdf", "application/pdf"},
                {".doc", "application/vnd.ms-word"},
                {".docx", "application/vnd.ms-word"},
                {".xls", "application/vnd.ms-excel"},
                {".xlsx", "application/vnd.openxmlformats  officedocument.spreadsheetml.sheet"},
                {".png", "image/png"},
                {".jpg", "image/jpeg"},
                {".jpeg", "image/jpeg"},
                {".gif", "image/gif"},
                {".csv", "text/csv"}
            };
        }
    }
}
