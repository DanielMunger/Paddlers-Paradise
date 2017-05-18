using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;

namespace PaddlersParadise.Models
{
    public class ApplicationUser : IdentityUser
    {
        //public virtual ICollection<Experience> Experiences { get; set; } Return to when DB is fixed.
    }
}
