using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;

namespace PaddlersParadise.Models
{
   
    public class RiverRun
    {
        
        public string river_section { get; set; }
        public string riverClass { get; set; }
        public string state { get; set; }
        public int gauge_id { get; set; }
        public string name { get; set; }
        [Key]
        public int id { get; set; }

    }
}
