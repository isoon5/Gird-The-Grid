using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using GirdTheGrid2.Server.Data;
using GirdTheGrid2.Server.Models;

namespace GirdTheGrid2.Server.Pages.Stations
{
    public class EditModel : PageModel
    {
        private readonly GirdTheGrid2.Server.Data.PowerStationsDbContext _context;

        public EditModel(GirdTheGrid2.Server.Data.PowerStationsDbContext context)
        {
            _context = context;
        }

        [BindProperty]
        public PowerStations PowerStations { get; set; }

        public async Task<IActionResult> OnGetAsync(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            PowerStations = await _context.PowerStations.FirstOrDefaultAsync(m => m.Id == id);

            if (PowerStations == null)
            {
                return NotFound();
            }
            return Page();
        }

        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see https://aka.ms/RazorPagesCRUD.
        public async Task<IActionResult> OnPostAsync()
        {
            if (!ModelState.IsValid)
            {
                return Page();
            }

            _context.Attach(PowerStations).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!PowerStationsExists(PowerStations.Id))
                {
                    return NotFound();
                }
                else
                {
                    throw;
                }
            }

            return RedirectToPage("./Index");
        }

        private bool PowerStationsExists(int id)
        {
            return _context.PowerStations.Any(e => e.Id == id);
        }
    }
}
