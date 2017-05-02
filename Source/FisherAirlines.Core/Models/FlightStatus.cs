using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace FisherAirlines.Models
{
    public class FlightStatus
    {
        [Key]
        public int FlightId { get; set; }

        public string Departure { get; set; }

        public string Destination { get; set; }

        public DateTime DepartDate { get; set; }

        [DataType(DataType.Time)]
        [DisplayFormat(ApplyFormatInEditMode = true, DataFormatString = "{0:H:mm}")]
        public DateTime ArrivalTime { get; set; }
         
        public string Status { get; set; }

    }
}

