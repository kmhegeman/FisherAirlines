using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Migrations;
using FisherAirlines.Models;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using System.ComponentModel.DataAnnotations; 
using System.Collections.Generic;



namespace FisherAirlines.Data
{
    public class FisherContext : DbContext
    {
    
    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
    {
    string connection = "Data Source=c:/AMIS3610/FisherAirlines/fisher-airlines.sqlite;";
    optionsBuilder.UseSqlite(connection);
    }

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {

        modelBuilder.Entity<Flight>().HasKey(x => x.Id);
        base.OnModelCreating(modelBuilder);

        modelBuilder.Entity<Bookings>().HasKey(b => b.ConfirmationNumber);
        base.OnModelCreating(modelBuilder);

        modelBuilder.Entity<FlightStatus>().HasKey(y => y.FlightId);
        base.OnModelCreating(modelBuilder);

    }

    public DbSet<Flight> Flight { get; set; }
    public DbSet<FlightStatus> FlightStatus { get; set; }
    public DbSet<Bookings> Bookings { get; set; }

    }
}
