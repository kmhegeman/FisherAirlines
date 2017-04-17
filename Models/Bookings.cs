using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace FisherAirlines.Models
{
    public class Bookings
    {
        [Key]
        public int ConfirmationNumber { get; set; }

        public string Username { get; set; }

        public List<Flight> Flights { get; set; }

        public int Passengers { get; set; }

        
         

    }
}