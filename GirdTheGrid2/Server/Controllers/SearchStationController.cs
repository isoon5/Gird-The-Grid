using GirdTheGrid2.Shared;
using Microsoft.AspNetCore.Mvc;
using System.Linq;

namespace GirdTheGrid2.Server.Controllers
{
    //[Authorize]
    [ApiController]
    [Route("statistics4")]
    public class SearchStationController : ControllerBase
    {
        private readonly GirdTheGrid2.Server.Data.PowerStationsDbContext _context;


        public SearchStationController(GirdTheGrid2.Server.Data.PowerStationsDbContext context)
        {
            _context = context;
        }
        [HttpPost]
        public Filters Post([FromBody] SearchPowerStation statItem)
        {

            Filters result = new Filters();

            var items = _context.PowerStations.Where(a => a.StationName.Equals(statItem.StationName));
            foreach (var item in items)
            {
                result.StationName = statItem.StationName;
                result.StationType = item.StationType;
                result.StationRegion = item.StationRegion;
                result.EnergyOutput = item.EnergyOutput;
            }
            //Console.WriteLine("region.name :" + statItem.RegionName);
            return result;


        }
    }
}
