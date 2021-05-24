using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.EntityFrameworkCore;
using GirdTheGrid2.Server.Models;

namespace GirdTheGrid2.Server.Pages.Stations
{
    public class DeleteModel : PageModel
    {
        private readonly GirdTheGrid2.Server.Data.PowerStationsDbContext _context;

        public DeleteModel(GirdTheGrid2.Server.Data.PowerStationsDbContext context)
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

        public async Task<IActionResult> OnPostAsync(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            PowerStations = await _context.PowerStations.FindAsync(id);

            if (PowerStations != null)
            {
                _context.PowerStations.Remove(PowerStations);
                await _context.SaveChangesAsync();
            }

            return RedirectToPage("./Index");
        }
    }
}
