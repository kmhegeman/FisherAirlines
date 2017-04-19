using Microsoft.AspNetCore.Mvc;
using FisherAirlines.Data;
using FisherAirlines.Models;
using System.Linq;
using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using Newtonsoft.Json;

[Route("flightstatus/{id}")]

public class FlightStatusController : Controller {

    private readonly FisherContext db;

public FlightStatusController(FisherContext context){           
    db = context;       }

//POST flightstatus
//[HttpGet("flightstatus/{id}")]
public IActionResult GetFlightStatus(int FlightId, string Destination, string Departure, DateTime DepartDate )
{

    var query = from a in db.FlightStatus where a.Destination == Destination || a.Departure == Departure || a.DepartDate.Date == DepartDate.Date || a.FlightId == FlightId
    orderby a.FlightId select a;

     return Ok(query);
}


}