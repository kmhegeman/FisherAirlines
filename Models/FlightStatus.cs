using System;

namespace FisherAirlines.Models
{
    public class FlightStatus
    {

        public int Id { get; set; }

        public DateTime FlightDate { get; set; }

        public string Source { get; set; }

        public string Destination { get; set; }
         
        public string Status { get; set; }

    }
}