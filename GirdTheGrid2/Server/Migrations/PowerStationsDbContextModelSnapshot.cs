// <auto-generated />
using GirdTheGrid2.Server.Data;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion;

namespace GirdTheGrid2.Server.Migrations
{
    [DbContext(typeof(PowerStationsDbContext))]
    partial class PowerStationsDbContextModelSnapshot : ModelSnapshot
    {
        protected override void BuildModel(ModelBuilder modelBuilder)
        {
#pragma warning disable 612, 618
            modelBuilder
                .HasAnnotation("Relational:MaxIdentifierLength", 128)
                .HasAnnotation("ProductVersion", "5.0.4")
                .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

            modelBuilder.Entity("GirdTheGrid2.Server.Models.PowerStations", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<float>("EnergyOutput")
                        .HasColumnType("real");

                    b.Property<string>("StationName")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("StationRegion")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("StationType")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("UserName")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("Id");

                    b.ToTable("PowerStations");
                });
#pragma warning restore 612, 618
        }
    }
}
