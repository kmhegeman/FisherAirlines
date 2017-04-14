using Microsoft.AspNetCore.Mvc;
using FisherAirlines.Data;
using FisherAirlines.Models;

[Route("")]
public class FlightStatusController : Controller {

    private readonly FisherContext db;

public FlightStatusController(FisherContext context){           
    db = context;       }

//POST flightstatus

[HttpPost]        
public IActionResult Post([FromBody] Flight flight) {            
    var newFlight = db.Flight.Add(flight);            
    db.SaveChanges();            
    return CreatedAtRoute("GetFlight", new { id = flight.Id }, flight);        
    }

//GET flightstatus
[HttpGet]        
public IActionResult GetFlights(){            
    return Ok(db.Flight);        }


[HttpGet("{id}", Name = "GetFlights")]        
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