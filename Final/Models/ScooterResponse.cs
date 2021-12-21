using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BeanTest.Models
{
    public class ScooterResponse
    {
        public string available { get; set; }
        public string distance { get; set; }
        public decimal lat { get; set; }
        public decimal lon { get; set; }
        
        public int locationid { get; set; }


    }
}