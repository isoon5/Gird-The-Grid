using GirdTheGrid2.Shared;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Linq;

namespace GirdTheGrid2.Server.Controllers
{
    [Authorize]
    [ApiController]
    [Route("statistics")]
    public class StatisticsController : ControllerBase
    {
        private readonly GirdTheGrid2.Server.Data.PowerStationsDbContext _context;

        
        public StatisticsController(GirdTheGrid2.Server.Data.PowerStationsDbContext context)
        {
            _context = context;
        }
        [HttpPost]
        public  Statistics1 Post([FromBody] PsStatistics1 statItem)
        {
            
            Statistics1 result= new Statistics1();
            
            var items = _context.PowerStations.Where(a => a.StationRegion.Equals(statItem.RegionName));
            int counter = 0;
            double totalPowerOutput = 0;
            foreach (var item in items)
            {
                counter++;
                totalPowerOutput += item.EnergyOutput;
            }
            result.Region = statItem.RegionName;
            result.TotalPowerOutput = totalPowerOutput;
            result.NumberOfStations = counter;
            Console.WriteLine("region.name :" + statItem.RegionName);
            return result;
            

        }
    }
}
