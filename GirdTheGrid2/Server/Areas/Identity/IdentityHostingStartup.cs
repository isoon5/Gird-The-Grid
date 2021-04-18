using Microsoft.AspNetCore.Hosting;

[assembly: HostingStartup(typeof(GirdTheGrid2.Server.Areas.Identity.IdentityHostingStartup))]
namespace GirdTheGrid2.Server.Areas.Identity
{
    public class IdentityHostingStartup : IHostingStartup
    {
        public void Configure(IWebHostBuilder builder)
        {
            builder.ConfigureServices((context, services) => {
            });
        }
    }
}