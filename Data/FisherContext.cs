using Microsoft.EntityFrameworkCore;
using FisherAirlines.Models;
namespace FisherAirlines.Data
{
    public class FisherContext : DbContext
    {
    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
    {
    string connection = "Data Source=C:/AMIS3610/FisherAirlines/fisher-airlines.sqlite;";
    optionsBuilder.UseSqlite(connection);
    }
public DbSet<Flight> Flights { get; set; }
public DbSet<FlightStatus> FlightStatus { get; set; }
    }
}