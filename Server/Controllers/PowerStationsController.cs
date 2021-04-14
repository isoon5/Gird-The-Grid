using GirdTheGrid2.Shared;
using GirdTheGrid2.Server.Models;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using System;
using System.Collections.Generic;
using System.Linq;


namespace GirdTheGrid2.Server.Controllers
{
    [Authorize]
    [ApiController]
    [Route("api/[controller]")]

    public class PowerStationsController
    {
        private readonly GirdTheGrid2.Server.Data.PowerStationsDbContext _context;

        public PowerStationsController(GirdTheGrid2.Server.Data.PowerStationsDbContext context)
        {
            _context = context;
        }

        [HttpGet]
        public List<PowerStations> Get()
        {
            return _context.PowerStations.ToList();
        }
    }
}