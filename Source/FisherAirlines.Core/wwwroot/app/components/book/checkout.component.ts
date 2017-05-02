import {Component, OnInit} from '@angular/core';
import {RouteParams} from '@angular/router';
import {Flight} from './flight';
import { LoginComponent } from './app/compponents/login/login.component'
import {FlightService} from '../../flight.service';
import { AuthService } from '../../auth.service';
import {Bookings} from './bookings';

@Component({
  selector: 'my-checkout',
  templateUrl: 'app/components/book/checkout.component.html',
  inputs: ['flight', 'Passengers', 'Price']
})

export class CheckoutComponent implements OnInit {
  public flight: Flight[];
  public selectedFlight: Flight; 
  public booking: Bookings;
  errorMessage: string;
  public username: string;
  public passengers: number;  
  public price: number 

  constructor(private flightService: FlightService, private authService: AuthService) {

  }

  ngOnInit() {
    if (!this.flight) {
      let username = this.username;
      let id = +this.selectedFlight.Id;
      this.flightService.get(username, id).then(flight => this.flight = flight);
    }
  }

  Checkout(){
     if (!this.flight) {
      this.booking.ConfirmationNumber = Math.floor(Math.random()*100000+1);
      this.booking.Id = this.selectedFlight.Id;
      this.booking.Destination = this.selectedFlight.Destination;
      this.booking.Departure = this.selectedFlight.Departure;
      this.booking.DepartDate = this.selectedFlight.DepartDate;
      this.booking.ArrivalTime = this.selectedFlight.ArrivalTime; 
      this.booking.Passengers = this.passengers;
      this.booking.Price = this.price;
      this.booking.Username = this.username;
      this.flightService.Checkout(booking).then(flight => this.flight = flight);
    }


  }

  goBack() {
    window.history.back();
  }
}