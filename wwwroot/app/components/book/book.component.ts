import {DATEPICKER_DIRECTIVES} from 'ng2-bootstrap/ng2-bootstrap';
import {Component, OnInit} from '@angular/core';
import {Router} from '@angular/router';
import {FlightService} from './flight.service';
import {CheckoutComponent} from './checkout.component';
import {Flight} from './flight';

@Component({
 selector: 'book-flight',
 templateUrl: './app/components/book/book.component.html',
 styles: ['./app/components/book/book.component.css'],
})
export class BookComponent implements OnInit{

public flight: Flight[];
public selectedFlight: Flight; 
errorMessage: string;

constructor(private flightService: FlightService, private router: Router) { }


 getFlights(Destination, Departure, DepartDate, Passengers) {
 this.flightService.getFlights(Destination, Departure, DepartDate, Passengers).then(flights => this.flight = flights);
}

 onSelect(flight: Flight) {
 this.selectedFlight = flight;
 console.log("item with Id " + this.selectedFlight.Id + "has been selected.");
 }


  gotoCheckout() {
    this.router.navigate(['CheckoutComponent', { id: this.selectedFlight.Id }]);
  }

} 