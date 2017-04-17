using Microsoft.AspNetCore.Mvc;
using FisherAirlines.Data;
using FisherAirlines.Models;
using System.Linq;
using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using Newtonsoft.Json;


[Route("api/flight")]
public class FlightController : Controller {

    private readonly FisherContext db;

public FlightController(FisherContext context){           
    db = context;       }

//Gett Flights from query

[HttpGet("GetFlights")]
public IActionResult GetFlights(string Destination, string Departure, DateTime DepartDate, int Passengers)
{

    var query = from a in db.Flight where a.Destination == Destination && a.Departure == Departure && a.DepartDate.Date == DepartDate.Date && a.AvailableSeats >= Passengers
    orderby a.Price select a;

     return Ok(query);
}

//PUT update available seats after new reservation

[HttpPut("{id}")]
 public IActionResult UpdateSeats(int id, [FromBody] Flight flight, int Passengers)
 {

 var searchflight = db.Flight.Where(i => i.Id ==
 id);
 if (flight != null){
    flight.AvailableSeats = flight.AvailableSeats - Passengers;
    db.SaveChanges();
    return Ok(searchflight);
 }

 return NotFound(new { Error = String.Format("Item ID {0} has not been found", id) });
}
}
