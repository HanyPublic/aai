using Aksaty.Infra.CrossCutting.Util;
using NetDevPack.Domain;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Text;

namespace Aksaty.Domain.Attachments.Models
{
    public class Attachment:BaseEntity,IAggregateRoot
    {
        public Attachment()
        {

        }
        public Attachment(
            Guid id,
            string type,
            string description,
            string url, 
            bool deleted,
            string systemFileName,
            string sourceFileName,
            string seoFileName,
            string subFolder,
            string fileExtension,
            int mediaTypeId,
            string thumbUrl,
            string tags,
            string createdById,
            string tanentId,
            DateTime createdAt,
            bool showOnWebsite)
        {
            Id = id;
            Type = type;
            Description = description;
            URL = url;
            Deleted = deleted;
            SystemFileName = systemFileName;
            SourceFileName = sourceFileName;
            SeoFileName = seoFileName;
            SubFolder = subFolder;
            FileExtension = fileExtension;
            MediaTypeId = mediaTypeId;
            ThumbURL = thumbUrl;
            Tags = tags;
            CreatedById = createdById;
            TanentId = tanentId;
            CreatedAt = createdAt;
            ShowOnWebsite = showOnWebsite;
        }

        public string Type { get; set; }
        [Column(TypeName = "nvarchar(500)")]
        public string Description { get; set; }
        [Column(TypeName = "nvarchar(2000)")]
        public string URL { get; set; }
        [Required]
        [Column(TypeName = "nvarchar(1000)")]
        public string SystemFileName { get; set; }
        [Required]
        [Column(TypeName = "nvarchar(1000)")]
        public string SourceFileName { get; set; }
        [Column(TypeName = "nvarchar(1000)")]
        public string SeoFileName { get; set; }
        public string SubFolder { get; set; }
        public string FileExtension { get; set; }
        public int MediaTypeId { get; set; }

        public string ThumbURL { get; set; }
        public string Tags { get; set; }
    }
}
