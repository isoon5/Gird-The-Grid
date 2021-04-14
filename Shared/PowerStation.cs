using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;

namespace GirdTheGrid2.Shared
{
    public class PowerStation
    {
        public int Id { get; set; }
        [Required]
        public string StationName { get; set; }
        [Required]
        public string UserName { get; set; }
        [Required]
        public string StationType { get; set; }
        [Required]
        public float EnergyOutput { get; set; }
        [Required]
        public string StationRegion { get; set; }
    }
}
