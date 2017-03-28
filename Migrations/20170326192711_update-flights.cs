using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore.Migrations;

namespace FisherAirlines.Migrations
{
    public partial class updateflights : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "Flights",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("Sqlite:Autoincrement", true),
                    DepartDate = table.Column<DateTime>(nullable: false),
                    Destination = table.Column<string>(nullable: true),
                    FlightType = table.Column<bool>(nullable: false),
                    Passengers = table.Column<int>(nullable: false),
                    ReturnDate = table.Column<DateTime>(nullable: false),
                    Source = table.Column<string>(nullable: true),
                    Status = table.Column<string>(nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Flights", x => x.Id);
                });
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "Flights");
        }
    }
}
