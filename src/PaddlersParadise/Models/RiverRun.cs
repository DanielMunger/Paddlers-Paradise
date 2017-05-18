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
        public string description { get; set; }
        //public List<Experience> experiences { get; set; } return to when DB is fixed.

        [Key]
        public int id { get; set; }

        public RiverRun()
        {

        }
        public RiverRun(string riverSection, string RiverClass, string State, int gaugeId, string gaugeName)
        {
            river_section = riverSection;
            riverClass = RiverClass;
            state = State;
            gauge_id = gaugeId;
            name = gaugeName;
        }
    }
}
