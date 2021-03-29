using System;
using System.Collections.Generic;
using System.Text;

namespace Gird_The_Grid.Shared
{
    public class GeneratingStation
    {
        public int Id { get; set; }

        public string City { get; set; }

        public DateTime ScheduledMaintenance { get; set; }

        public int Capacity { get; set; }

        public string Type { get; set; }

        public int MegaWatts { get; set; }
    }
}
