using Microsoft.AspNetCore.Mvc;
using FisherAirlines.Data;
using FisherAirlines.Models;
using System.Linq;
using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using Newtonsoft.Json;

[Route("flightstatus")]
public class FlightStatusController : Controller {

    private readonly FisherContext db;

public FlightStatusController(FisherContext context){           
    db = context;       }

//POST flightstatus

public IActionResult GetFlightStatus(int FlightId, string Destination, string Departure, DateTime DepartDate)
{

    var query = from a in db.FlightStatus where a.Destination == Destination || a.Departure == Departure || a.DepartDate.Date == DepartDate.Date || a.FlightId == FlightId
    orderby a.FlightId select a;

     return Ok(query);
}

[HttpPost]        
public IActionResult Post([FromBody] Flight flight) {            
    var newFlight = db.Flight.Add(flight);            
    db.SaveChanges();            
    return CreatedAtRoute("GetFlightStatus", new { id = flight.Id }, flight);        
    }


[HttpGet("{id}", Name = "GetFlightStatus")]        
public IActionResult Get(int id)        {            
        return Ok(db.Flight.Find(id));        }
//PUT flightstatus

[HttpPut("{id}")]        
public IActionResult Put(int id, [FromBody] Flight flight)        {            
    var newFlight = db.Flight.Find(id);            
    if (newFlight == null)            {                
        return NotFound();            }            
        newFlight = flight;            
        db.SaveChanges();            
        return Ok(newFlight);
}
//DELETE flightstatus

[HttpDelete("{id}")]        
public IActionResult Delete(int id){            
    var flightToDelete = db.Flight.Find(id);            
    if (flightToDelete == null){                
        return NotFound();   
        }            
        db.Flight.Remove(flightToDelete);            
        db.SaveChangesAsync();            
        return NoContent();
}
}