using System;
using System.Linq;
using System.Threading.Tasks;

namespace Gird_The_Grid.Data
{
    public class PowerStationService
    {
        private readonly string[] Types = new[]
        {
            "Coal", "Gas", "Nuclear", "Wind", "Solar", "Oil"
        };

        private readonly string[] Cities = new[]
        {
            "Iasi", "Ramnicu Valcea", "Bucuresti", "Cluj", "Suceava", "Constanta", "Turnu Magurele", "Baia Mare", "Poteca Dealului", "Craiova", "Pitesti", "Curtici"
        };

        public Task<PowerStation[]> GetStationsAsync()
        {
            var rng = new Random();
            return Task.FromResult(Enumerable.Range(1, 20).Select(index => new PowerStation
            {
                Id = rng.Next(100, 1000),
                City = Cities[rng.Next(Cities.Length)],
                ScheduledMaintenance = DateTime.Now.AddDays(rng.Next(100, 500)),
                Capacity = rng.Next(0, 100),
                Type = Types[rng.Next(Types.Length)],
                MegaWatts = rng.Next(100, 750)
            }).ToArray());
        }
    }
}
