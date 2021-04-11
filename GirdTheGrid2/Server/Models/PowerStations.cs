using System.ComponentModel.DataAnnotations;
namespace GirdTheGrid2.Server.Models
{
    public class PowerStations 
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
