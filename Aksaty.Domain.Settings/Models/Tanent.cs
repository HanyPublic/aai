using System;
using System.ComponentModel.DataAnnotations.Schema;
using Aksaty.Domain.Attachments.Models;
using Microsoft.AspNetCore.Identity;
using NetDevPack.Domain;

namespace Aksaty.Domain.Models
{
    public class Tanent : Entity, IAggregateRoot
    {
        //Instance constructor to create new tanent
        public Tanent(Guid id, Guid? imageId, string userId, string name, string email, string mobile, string address, string currency, int monthCount, decimal perecntage, string logo, string colors, string note, string signatureArray, string stampAttachment)
        {
            Id = id;
            ImageId = imageId;
            UserId = userId;
            Name = name;
            Email = email;
            Mobile = mobile;
            Address = address;
            Currency = currency;
            MonthCount = monthCount;
            Perecntage = perecntage;
            Logo = logo;
            Colors = colors;
            Note = note;
            SignatureArray = signatureArray;
            StampAttachment = stampAttachment;
        }

        // Empty constructor for EF
        protected Tanent() { }
        public Guid? ImageId { get; set; }
        [ForeignKey("ImageId")]
        public Attachment Image { get; set; }
        [Column(TypeName = "nvarchar(300)")]
        public string Name { get; private set; }
        [Column(TypeName = "nvarchar(500)")]
        public string Email { get; private set; }
        [Column(TypeName = "nvarchar(200)")]
        public string Mobile { get; private set; }
        [Column(TypeName = "nvarchar(1000)")]
        public string Address { get; private set; }
        [Column(TypeName = "nvarchar(50)")]
        public string Currency { get; private set; }
        public int MonthCount { get; private set; }
        public decimal Perecntage { get; private set; }
        public string Logo { get; private set; }
        public string Colors { get; private set; }
        [Column(TypeName = "nvarchar(1000)")]
        public string Note { get; private set; }
        [Column(TypeName = "nvarchar(1000)")]
        public string SignatureArray { get; private set; }
        public string StampAttachment { get; private set; }
        [ForeignKey("UserId")]
        public IdentityUser User { get; private set; }
        public string UserId { get; private set; }

        public void Update(string name,Guid? imageId ,string email, string mobile, string address, string currency, int monthCount, decimal perecntage, string logo, string colors, string note, string signatureArray, string stampAttachment)
        {
            ImageId = imageId;
            Image = null;
            Name = name;
            Email = email;
            Mobile = mobile;
            Address = address;
            Currency = currency;
            MonthCount = monthCount;
            Perecntage = perecntage;
            Logo = logo;
            Colors = colors;
            Note = note;
            SignatureArray = signatureArray;
            StampAttachment = stampAttachment;
        }
    }
}