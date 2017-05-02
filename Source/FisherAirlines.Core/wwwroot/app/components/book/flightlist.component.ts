import {Component, OnInit} from '@angular/core';
import {RouteParams, Router} from '@angular/router';
import {Flight} from './flight';
import {FlightService} from '../../flight.service';
import { AuthService } from '../../auth.service';
import {Bookings} from './bookings';

@Component({
  selector: 'my-checkout',
  templateUrl: 'app/components/book/checkout.component.html',
  inputs: ['Destination', 'Departure', 'DepartDate', 'Passengers']
})

export class FlightListComponent implements OnInit {
  public flight: Flight[];
  public selectedFlight: Flight; 
  public booking: Bookings;
  errorMessage: string;
  public passengers: number;  
  public price: number 

  constructor(private flightService: FlightService, private router: Router) {

  }
  ngOnInit(Destination, Departure, DepartDate, Passengers) {
    this.GetFlights(Destination, Departure, DepartDate, Passengers);
  }

   GetFlights(Destination, Departure, DepartDate, Passengers) {
      this.flightService.getFlights(Destination, Departure, DepartDate, Passengers).then(flights => this.flight = flights);
}

   onSelect(flight: Flight) {
    this.selectedFlight = flight;
    console.log("item with Id " + this.selectedFlight.Id + "has been selected.");
}

    gotoCheckout() {
    let Passengers = this.passengers;
    let Price = this.passengers*this.selectedFlight.Price;
    this.router.navigate(['CheckoutComponent', { id: this.selectedFlight.Id, Passengers, Price }]);
  }
}