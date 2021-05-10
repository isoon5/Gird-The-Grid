using GirdTheGrid2.Shared;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;

namespace GirdTheGrid2.Server.Controllers
{
    [Authorize]
    [ApiController]
    [Route("statistics3")]
    public class Statistics3Controller : ControllerBase
    {
        private readonly GirdTheGrid2.Server.Data.PowerStationsDbContext _context;


        public Statistics3Controller(GirdTheGrid2.Server.Data.PowerStationsDbContext context)
        {
            _context = context;
        }
        [HttpPost]
        public List<Statistics2> Post([FromBody] PsStatistics3 statItem)
        {
            List<Statistics2> result = new List<Statistics2>();

            var items = _context.PowerStations.Where(a => a.StationType == statItem.stationType);

            foreach (var item in items)
            {
                Statistics2 newItem = new Statistics2();
                newItem.EnergyOutput = item.EnergyOutput;
                newItem.StationName = item.StationName;
                newItem.StationRegion = item.StationRegion;
                newItem.StationType = item.StationType;
                result.Add(newItem);

            }


            return result;


        }
    }
}
