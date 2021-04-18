using Microsoft.EntityFrameworkCore.Migrations;

namespace GirdTheGrid2.Server.Migrations
{
    public partial class PowerStations : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "PowerStations",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    StationName = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    UserName = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    StationType = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    EnergyOutput = table.Column<float>(type: "real", nullable: false),
                    StationRegion = table.Column<string>(type: "nvarchar(max)", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_PowerStations", x => x.Id);
                });
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "PowerStations");
        }
    }
}
