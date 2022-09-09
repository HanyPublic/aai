using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace Aksaty.Application.ViewModels
{
    public class AddTanentViewModel
    {
        public string ImageUrl { get; set; }
        public string ImageId { get; set; }
        [Required(ErrorMessage = "Please ensure you have entered the Name",AllowEmptyStrings =false)]
        [StringLength(maximumLength:150,MinimumLength =2,ErrorMessage ="The Name must have between 2 and 150 characters")]
        public string Name { get; set; }
        public string Email { get; set; }
        public string Mobile { get; set; }
        public string Address { get; set; }
        public string Currency { get; set; }
        [Required]
        public int MonthCount { get; set; }
        [Required]
        public decimal Perecntage { get; set; }
        public string Logo { get; set; }
        public string Colors { get; set; }
        public string Note { get; set; }
        public string SignatureArray { get; set; }
        public string StampAttachment { get; set; }
        public string UserId { get; set; }
    }
}
