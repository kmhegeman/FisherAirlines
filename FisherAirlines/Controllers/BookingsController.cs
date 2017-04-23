using Microsoft.AspNetCore.Mvc;
using FisherAirlines.Data;
using FisherAirlines.Models;
using System.Linq;
using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using Newtonsoft.Json;


[Route("")]
public class BookingsController : Controller {

    private readonly FisherContext db;

public BookingsController(FisherContext context){           
    db = context;       }

//POST flightstatus

[HttpGet]
[Route("mytickets/")]
public IActionResult GetTickets(string username)
{

    var query = from a in db.Bookings where a.Username == username
    orderby a.Price select a;

     return Ok(query);
}


[HttpPost]
[Route("checkout/")]
 public IActionResult Post([FromBody] Bookings booking)
 {
 var newFlight = db.Bookings.Add(booking);
 db.SaveChanges();
 return CreatedAtRoute("GetTickets", new { ConfirmationNumber = booking.Id }, booking);
 }

}