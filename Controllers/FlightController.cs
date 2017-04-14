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

[HttpPost]        
public IActionResult Post([FromBody] Flight flight) {            
    var newFlight = db.Flight.Add(flight);            
    db.SaveChanges();            
    return CreatedAtRoute("GetFlight", new { id = flight.Id }, flight);        
    }

//GET flightstatus
[HttpGet("GetFlights")]        
public IActionResult GetFlights(){            
    return Ok(db.Flight);        }


[HttpGet]        
public IActionResult Get(int id)        {            
        return Ok(db.Flight.Find(id));        }
//PUT flightstatus

[HttpGet]
 public JsonResult GetLatest(int num)
 {
 var arr = new List<Flight>();
 for (int i = 1; i <= num; i++) arr.Add(new Flight() {
 Id = i,
 
 });
 var settings = new JsonSerializerSettings() {
 Formatting = Formatting.Indented
 };
 return new JsonResult(arr, settings);
 }

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
