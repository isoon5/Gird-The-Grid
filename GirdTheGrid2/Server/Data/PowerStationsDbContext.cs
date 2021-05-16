using Microsoft.EntityFrameworkCore;

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
