using System;

namespace FisherAirlines.Models
{
    public class Flight
    {

        public int Id { get; set; }

        public string Source {get; set; }

        public string Destination { get; set; }
        
        public DateTime DepartDate { get; set; }

        public DateTime ReturnDate { get; set; }

        public int Passengers { get; set; }

        public Boolean FlightType { get; set; }
         
        public string Status { get; set; }

    }
}