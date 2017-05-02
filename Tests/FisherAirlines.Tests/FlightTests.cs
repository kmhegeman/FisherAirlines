using System;
using FisherAirlines.Models;
using Xunit;

namespace FisherAirlines.Tests
{
    public class FlightTests
    {
        [Fact]
        public void Test1()
        {
            //arrange
            var flight = new Flight
            {
                Id = 1,
                Departure = "Columbus",
                Price = 150
            };

            var booking = new Bookings
            {
                ConfirmationNumber = 54321,
                Username = "Admin",
                Id = 1
            };

            //act
            flight.AddBookings(booking);

            //assert
            Assert.NotNull(flight.Bookings);
            Assert.Equal(flight.Id, flight.Bookings.Id);
          }
     }
}
