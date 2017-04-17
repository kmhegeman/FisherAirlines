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

        public int Id { get; set; }

        public string Departure {get; set; }

        public string Destination { get; set; }
        
        public DateTime DepartDate { get; set; }

        [DataType(DataType.Time)]
        [DisplayFormat(ApplyFormatInEditMode = true, DataFormatString = "{0:H:mm}")]
        public DateTime ArrivalTime { get; set; }

        public int Passengers { get; set; }

        public int Price { get; set; }

        
         

    }
}