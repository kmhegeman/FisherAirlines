using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace FisherAirlines.Models
{
    public class Flight
    {
        [Key]
        public int Id { get; set; }

        public string Departure {get; set; }

        public string Destination { get; set; }
        
        public DateTime DepartDate { get; set; }

        [DataType(DataType.Time)]
        [DisplayFormat(ApplyFormatInEditMode = true, DataFormatString = "{0:H:mm}")]
        public DateTime ArrivalTime { get; set; }

        public void AddBookings(Bookings booking)
        {
            this.Bookings = GetBookings(booking);
        }

        public static Bookings GetBookings(Bookings booking)
        {
            return booking;
        }

        public int AvailableSeats { get; set; }

        public int Price { get; set; }
        public Bookings Bookings { get; set; }
    }
}
