using Gird_The_Grid.Shared;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Gird_The_Grid.Server.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class GeneratingStationController : ControllerBase
    {
        private static readonly string[] Types = new[]
        {
            "Coal", "Gas", "Nuclear", "Wind", "Solar", "Oil"
        };

        private static readonly string[] Cities = new[]
        {
            "Iasi", "Ramnicu Valcea", "Bucuresti", "Cluj", "Suceava", "Constanta", "Turnu Magurele", "Baia Mare", "Poteca Dealului", "Craiova", "Pitesti", "Curtici"
        };


        private readonly ILogger<GeneratingStationController> logger;

        public GeneratingStationController(ILogger<GeneratingStationController> logger)
        {
            this.logger = logger;
        }

        [HttpGet]
        public IEnumerable<GeneratingStation> Get()
        {
            var rng = new Random();
            return Enumerable.Range(1, 20).Select(index => new GeneratingStation
            {
                Id = rng.Next(100, 1000),
                City = Cities[rng.Next(Cities.Length)],
                ScheduledMaintenance = DateTime.Now.AddDays(rng.Next(100, 500)),
                Capacity = rng.Next(0, 100),
                Type = Types[rng.Next(Types.Length)],
                MegaWatts = rng.Next(100, 750)
            })
            .ToArray();
        }
    }
}
