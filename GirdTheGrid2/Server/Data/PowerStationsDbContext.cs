using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using GirdTheGrid2.Server.Models;

namespace GirdTheGrid2.Server.Data
{
    public class PowerStationsDbContext : DbContext
    {
        public PowerStationsDbContext (DbContextOptions<PowerStationsDbContext> options)
            : base(options)
        {
        }

        public DbSet<GirdTheGrid2.Server.Models.PowerStations> PowerStations { get; set; }
    }
}
