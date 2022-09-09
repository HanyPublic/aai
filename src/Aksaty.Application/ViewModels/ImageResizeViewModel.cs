using Microsoft.AspNetCore.Http;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace Aksaty.Application.ViewModels
{
    public class ImageResizeViewModel
    {
        [Required]
        public IFormFile Image { get; set; }
        [Required]
        public int Width { get; set; }
        [Required]
        public int Height { get; set; }
        [Required]
        public int Quality { get; set; }
    }
}
