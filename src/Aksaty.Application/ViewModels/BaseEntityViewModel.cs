using System;
using System.Collections.Generic;
using System.Text;

namespace Aksaty.Application.ViewModels
{
    public class BaseEntityViewModel
    {
        public string CreatedById { get; set; } //UserId
        public string TanentId { get; set; }
        public DateTime? CreatedAt { get; set; } = DateTime.Now;
        public bool? ShowOnWebsite { get; set; } = true;
        public bool? Deleted { get; set; } = false;
    }
}
