using System;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using Aksaty.Domain.Attachments.Models;
using Aksaty.Infra.CrossCutting.Util;
using NetDevPack.Domain;

namespace Aksaty.Domain.Models
{
    public class Customer : BaseEntity, IAggregateRoot
    {
        public Customer(
           Guid id, Guid? imageId, string name,
           string email, DateTime birthDate,
           string mobile, string mobile2,
           string address, string type,
           string addRecription, string createdById,
           string tanentId, DateTime createdAt,
           bool showOnWebsite, bool deleted,
           string nationalId, string refId,
           string notes, string review, List<CustomerAttachment> attachments
           )
        {
            ImageId = imageId;
            Id = id;
            Name = name;
            Email = email;
            BirthDate = birthDate;
            Mobile = mobile;
            Mobile2 = mobile2;
            Address = address;
            Type = type;
            AddRecription = addRecription;
            CreatedById = createdById;
            TanentId = tanentId;
            CreatedAt = createdAt;
            ShowOnWebsite = showOnWebsite;
            Deleted = deleted;
            NationalId = nationalId;
            RefId = refId;
            Notes = notes;
            Review = review;
            attachments.ForEach(c => { c.CustomerId = id; });
            Attachments = attachments;
        }
        public Customer(
            Guid id,
            decimal balance,
            DateTime nextInstallDate
            )
        {
            Id = id;
            Balance = balance;
            NextInstallDate = nextInstallDate;
        }
        protected Customer() { }
        public Guid? ImageId { get; set; }
        [ForeignKey("ImageId")]
        public Attachment Image { get; set; }
        [Column(TypeName = "nvarchar(100)")]
        public string NationalId { get; set; }
        public string RefId { get; set; }
        [Column(TypeName = "nvarchar(500)")]
        public string Notes { get; set; }
        [Column(TypeName = "nvarchar(200)")]
        public string Review { get; set; }

        [Column(TypeName = "nvarchar(200)")]
        public string Name { get; set; }

        [Column(TypeName = "nvarchar(300)")]
        public string Email { get; set; }

        public DateTime BirthDate { get; set; }

        [Column(TypeName = "nvarchar(200)")]
        public string Mobile { get; set; }

        [Column(TypeName = "nvarchar(200)")]
        public string Mobile2 { get; set; }

        [Column(TypeName = "nvarchar(1000)")]
        public string Address { get; set; }

        public string Type { get; set; }/* Company, personale , shop */
        public string AddRecription { get; set; }
        public decimal Balance { get; private set; }
        public DateTime NextInstallDate { get; private set; }
        public ICollection<CustomerAttachment> Attachments { get; set; } = new List<CustomerAttachment>();
        /// <summary>
        /// Updates customer field
        /// </summary>
        /// <param name="name"></param>
        /// <param name="email"></param>
        /// <param name="birthDate"></param>
        /// <param name="mobile"></param>
        /// <param name="mobile2"></param>
        /// <param name="address"></param>
        /// <param name="type"></param>
        /// <param name="addRecription"></param>
        public void Update(
            Guid? imageId, string name, string email,
            DateTime birthDate, string mobile, string mobile2,
            string address, string type, string addRecription,
            string nationalId, string refId,
           string notes, string review, bool showOnWebsite, bool deleted)
        {
            ImageId = imageId;
            Image = null;
            Name = name;
            Email = email;
            BirthDate = birthDate;
            Mobile = mobile;
            Mobile2 = mobile2;
            Address = address;
            Type = type;
            AddRecription = addRecription;
            ShowOnWebsite = showOnWebsite;
            NationalId = nationalId;
            RefId = refId;
            Notes = notes;
            Review = review;
            Deleted = deleted;
        }
        /// <summary>
        /// Updates balance, installment
        /// </summary>
        /// <param name="balance"></param>
        /// <param name="nextInstallmentDate"></param>
        public void Update(decimal balance, DateTime nextInstallmentDate)
        {
            Balance = balance;
            NextInstallDate = nextInstallmentDate;
        }
    }
}