import {Component, OnInit} from '@angular/core';
import {Router} from '@angular/router';
import {FlightService} from './flight.service';
import {CheckoutComponent} from './checkout.component';
import {Flight} from './flight';

@Component({
  selector: 'my-flights',
  templateUrl: 'app/components/book/flightoptionlist.html',
  directives: [CheckoutComponent]
})
export class FlightListComponent implements OnInit {
  public flights: Flight[];
  public selectedFlight: Flight;

  constructor(private _flightService: FlightService, private _router: Router) { }


  getFlights(Destination, Departure, DepartDate, Passengers) {
    this._flightService.getFlights(Destination, Departure, DepartDate, Passengers).then(flights => this.flights = flights);
  }

  gotoCheckout() {
    this._router.navigate(['CheckoutComponent', { id: this.selectedFlight.Id }]);
  }



  onSelect(flight: Flight) { this.selectedFlight = flight; }
}