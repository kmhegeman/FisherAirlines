using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Migrations;
using FisherAirlines.Data;

namespace FisherAirlines.Migrations
{
    [DbContext(typeof(FisherContext))]
    partial class FisherContextModelSnapshot : ModelSnapshot
    {
        protected override void BuildModel(ModelBuilder modelBuilder)
        {
            modelBuilder
                .HasAnnotation("ProductVersion", "1.1.1");

            modelBuilder.Entity("FisherAirlines.Models.Flight", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<DateTime>("DepartDate");

                    b.Property<string>("Destination");

                    b.Property<bool>("FlightType");

                    b.Property<int>("Passengers");

                    b.Property<DateTime>("ReturnDate");

                    b.Property<string>("Source");

                    b.Property<string>("Status");

                    b.HasKey("Id");

                    b.ToTable("Flights");
                });
        }
    }
}
