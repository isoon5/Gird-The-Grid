using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.EntityFrameworkCore;
using GirdTheGrid2.Server.Data;
using GirdTheGrid2.Server.Models;

namespace GirdTheGrid2.Server.Pages.Stations
{
    public class IndexModel : PageModel
    {
        private readonly GirdTheGrid2.Server.Data.PowerStationsDbContext _context;

        public IndexModel(GirdTheGrid2.Server.Data.PowerStationsDbContext context)
        {
            _context = context;
        }

        public IList<PowerStations> PowerStations { get;set; }

        public async Task OnGetAsync()
        {
            PowerStations = await _context.PowerStations.ToListAsync();
        }
    }
}
