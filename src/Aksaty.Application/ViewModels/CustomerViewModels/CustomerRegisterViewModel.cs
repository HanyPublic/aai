using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;

namespace Aksaty.Application.ViewModels
{
    public class CustomerRegisterViewModel:BaseEntityViewModel
    {
        public string NationalId { get; set; }
        public string RefId { get; set; }
        public string Notes { get; set; }
        public string Review { get; set; }
        public string ImageId { get; set; }
        public string ImageUrl { get; set; }
        [MinLength(2)]
        [MaxLength(100)]
        [DisplayName("Name")]
        public string Name { get; set; }

        [EmailAddress]
        [DisplayName("E-mail")]
        public string Email { get; set; }

        [DisplayFormat(ApplyFormatInEditMode = true, DataFormatString = "{0:yyyy-MM-dd}")]
        [DataType(DataType.Date, ErrorMessage = "Data em formato inválido")]
        [DisplayName("Birth Date")]
        public DateTime BirthDate { get; set; }
        public string Mobile { get; set; }
        public string Mobile2 { get; set; }
        public string Address { get; set; }
        public string Type { get; set; }
        public string AddRecription { get; set; } 
        public List<AttachmentViewModel> Attachments { get; set; }
    }
}
