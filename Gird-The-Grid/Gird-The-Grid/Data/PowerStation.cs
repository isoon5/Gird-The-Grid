using System;

namespace Gird_The_Grid.Data
{
    public class PowerStation
    {
        public int Id { get; set; }
        public string City { get; set; }
        public DateTime ScheduledMaintenance { get; set; }
        public int Capacity { get; set; }
        public string Type { get; set; }
        public int MegaWatts { get; set; }
    }
}
