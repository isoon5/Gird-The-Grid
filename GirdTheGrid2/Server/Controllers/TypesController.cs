using GirdTheGrid2.Shared;
using Microsoft.AspNetCore.Mvc;
using System.Collections.Generic;
using System.Linq;

namespace GirdTheGrid2.Server.Controllers
{
    //[Authorize]
    [ApiController]
    [Route("statistics3")]
    public class TypesController : ControllerBase
    {
        private readonly GirdTheGrid2.Server.Data.PowerStationsDbContext _context;


        public TypesController(GirdTheGrid2.Server.Data.PowerStationsDbContext context)
        {
            _context = context;
        }
        [HttpPost]
        public Types Post([FromBody] PowerStationType statItem)
        {
            
            Types result = new Types();
            result.items = new List<Filters>();
            var items = _context.PowerStations.Where(a => a.StationType == statItem.stationType);
            var currentStep = 0;
            var goalStep = 5 * statItem.currentPage;
            foreach (var item in items)
            {
                currentStep++;
                if (currentStep > goalStep - 5 && currentStep <= goalStep)
                {
                    Filters newItem = new Filters();
                    newItem.EnergyOutput = item.EnergyOutput;
                    newItem.StationName = item.StationName;
                    newItem.StationRegion = item.StationRegion;
                    newItem.StationType = item.StationType;
                    result.items.Add(newItem);
                }
            }

            result.maxPages = (currentStep / 5) + 1;
            return result;


        }
    }
}
