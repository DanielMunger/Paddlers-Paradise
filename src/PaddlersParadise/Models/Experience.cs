using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;

namespace PaddlersParadise.Models
{
    public class Experience
    {
        [Key]
        public int id { get; set; }
        public string experienceDescription { get; set; }
        public string userId { get; set; }
        public virtual RiverRun riverRun { get; set; }
        public DateTime postedTime { get; set; }

        public Experience(string Description, RiverRun RiverRun)
        {
            experienceDescription = Description;          
            riverRun = RiverRun;
            postedTime = DateTime.Now;
        }
    }
}
