import {DATEPICKER_DIRECTIVES} from 'ng2-bootstrap/ng2-bootstrap';
import {Component, OnInit} from '@angular/core';
import {Router} from '@angular/router';
import {FlightService} from '../../flight.service';
import {CheckoutComponent} from './checkout.component';
import {Flight} from './flight';
import { FormBuilder, Validators } from '@angular/forms';

@Component({
 selector: 'book-flight',
 templateUrl: './app/components/book/book.component.html',
 styles: ['./app/components/book/book.component.css'],
})
export class BookComponent implements OnInit{
FlightForm = null;
public flight: Flight[];
public selectedFlight: Flight; 
errorMessage: string;


constructor(private flightService: FlightService, private router: Router, private fb: FormBuilder,)
 { this.FlightForm = fb.group({
            Desintation: [""],
            Departure: [""],
            DeparDate: [""],
            Passengers: [""],
        });
      }

 getFlights(e) {
   e.preventDefault();
      var Destination = this.FlightForm.value.Destination;
      var Departure = this.FlightForm.value.Departure;
      var DepartDate = this.FlightForm.value.DepartDate;
      var Passengers = this.FlightForm.value.Passengers;
      this.flightService.getFlights(Destination, Departure, DepartDate, Passengers).then(flights => this.flight = flights);
}

 onSelect(flight: Flight) {
 this.selectedFlight = flight;
 console.log("item with Id " + this.selectedFlight.Id + "has been selected.");
 }


  gotoCheckout() {
    let Passengers = this.FlightForm.value.Passengers;
    let Price = this.FlightForm.value.Passengers*this.selectedFlight.Price;
    this.router.navigate(['CheckoutComponent', { id: this.selectedFlight.Id, Passengers, Price }]);
  }

} 