using Microsoft.AspNetCore.Mvc;
using FisherAirlines.Data;
using FisherAirlines.Models;
using System.Linq;
using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using Newtonsoft.Json;


[Route("flight")]
public class FlightController : Controller {

    private readonly FisherContext db;

public FlightController(FisherContext context){           
    db = context;       }

//POST flightstatus

[HttpGet]

public IActionResult GetFlights(string Destination, string Departure, DateTime DepartDate, int Passengers)
{

    var query = from a in db.Flight where a.Destination == Destination && a.Departure == Departure && a.DepartDate.Date == DepartDate.Date && a.AvailableSeats > Passengers
    orderby a.Price select a;

     return Ok(query);
}


[HttpPost]
 public IActionResult Post([FromBody] Flight flight)
 {
 var newFlight = db.Flight.Add(flight);
 db.SaveChanges();
 return CreatedAtRoute("GetFlight", new { id = flight.Id }, flight);
 }


//GET api/quotes/quote

 [HttpGet("{id}", Name = "GetFlight")]
public IActionResult Get(int id)
 {
 return Ok(db.Flight.Find(id));
 }
//PUT api/quotes/id

[HttpPut("{id}")]
 public IActionResult Put(int id, [FromBody] Flight flight)
 {
 var newFlight = db.Flight.Find(id);
 if (newFlight == null)
 {
 return NotFound();
 }
 newFlight = flight;
 db.SaveChanges();
 return Ok(newFlight);
 }
[HttpDelete("{id}")]

 public IActionResult Delete(int id)
 {
 var flightToDelete = db.Flight.Find(id);
 if (flightToDelete == null)
 {
 return NotFound();
 }
 db.Flight.Remove(flightToDelete);
 db.SaveChangesAsync();
 return NoContent();

}
}