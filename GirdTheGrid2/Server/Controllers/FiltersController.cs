using GirdTheGrid2.Shared;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;

namespace GirdTheGrid2.Server.Controllers
{
    //[Authorize]
    [ApiController]
    [Route("statistics2")]
    public class FiltersController : ControllerBase
    {
        private readonly GirdTheGrid2.Server.Data.PowerStationsDbContext _context;


        public FiltersController(GirdTheGrid2.Server.Data.PowerStationsDbContext context)
        {
            _context = context;
        }
        [HttpPost]
        public Types Post([FromBody] PowerStationFilter statItem)
        {
            //Console.WriteLine("current page: " + statItem.currentPage);
            Types result = new Types();
            result.items = new List<Filters>();
            var items = _context.PowerStations.Where(a => a.EnergyOutput >= statItem.minOutput && a.EnergyOutput <=statItem.maxOutput);
            var currentStep = 0;
            var goalStep = 5 * statItem.currentPage;
            foreach (var item in items)
            {
                currentStep++;
                if (currentStep > goalStep - 5 && currentStep <= goalStep)
                {
                    //Console.WriteLine("current step: " + currentStep);
                    Filters newItem = new Filters();
                    newItem.EnergyOutput = item.EnergyOutput;
                    newItem.StationName = item.StationName;
                    newItem.StationRegion = item.StationRegion;
                    newItem.StationType = item.StationType;
                    result.items.Add(newItem);
                }
                //if (currentStep > goalStep) break;
            }
           
            result.maxPages = (currentStep / 5) + 1;
            return result;
            

        }
    }
}
