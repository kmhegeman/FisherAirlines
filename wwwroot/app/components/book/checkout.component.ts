import {Component, OnInit} from '@angular/core';
import {RouteParams} from '@angular/router';
import {Flight} from './flight';
import {FlightService} from './flight.service';

@Component({
  selector: 'my-checkout',
  templateUrl: 'app/components/book/checkout.html',
  inputs: ['flight']
})

export class CheckoutComponent implements OnInit {
  public flight: Flight[];
  public selectedFlight: Flight; 
  errorMessage: string;


  constructor(private flightService: FlightService) {
  }

  ngOnInit() {
    if (!this.flight) {
  
      this.flightService.get().then(flight => this.flight = flight);
    }
  }

  goBack() {
    window.history.back();
  }
}