using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using GirdTheGrid2.Server.Models;

namespace GirdTheGrid2.Server.Pages.Stations
{
    public class CreateModel : PageModel
    {
        private readonly GirdTheGrid2.Server.Data.PowerStationsDbContext _context;

        public CreateModel(GirdTheGrid2.Server.Data.PowerStationsDbContext context)
        {
            _context = context;
        }

        public IActionResult OnGet()
        {
            return Page();
        }

        [BindProperty]
        public PowerStations PowerStations { get; set; }

        // To protect from overposting attacks, see https://aka.ms/RazorPagesCRUD
        public async Task<IActionResult> OnPostAsync()
        {
            if (!ModelState.IsValid)
            {
                return Page();
            }

            _context.PowerStations.Add(PowerStations);
            await _context.SaveChangesAsync();

            return RedirectToPage("./Index");
        }
    }
}
