import {Component, NgModule} from '@angular/core'
import {BrowserModule} from '@angular/platform-browser'
import { Flight } from './flightoption';
 
@Component({
  selector: 'my-country-list',
  templateUrl: './app/components/book/flightoptionlist.html'
})
export class FlightListComponent {
  countries = [
     new Flight('One Way' ),
     new Flight('Round Trip' ),
  ];
}