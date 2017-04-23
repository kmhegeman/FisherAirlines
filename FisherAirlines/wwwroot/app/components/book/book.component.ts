import {DATEPICKER_DIRECTIVES} from 'ng2-bootstrap/ng2-bootstrap';
import {Component, OnInit, Inject } from '@angular/core';
import {Router} from '@angular/router';
import {FlightService} from '../../flight.service';
import {CheckoutComponent} from './checkout.component';
import {Flight} from './flight';
import { FormBuilder, Validators, FormGroup, CustomValidators } from '@angular/forms';

@Component({
 selector: 'book-flight',
 templateUrl: './app/components/book/book.component.html',
 styles: ['./app/components/book/book.component.css'],
})
export class BookComponent implements OnInit{
FlightForm: FormGroup;
public flight: Flight[];
public selectedFlight: Flight; 
errorMessage: string;
today: Date = new Date();
Destination: string;
Departure: string;
DepartDate: Date;
Passengers: number;


constructor(private fb: FormBuilder, private flightService: FlightService, private router: Router)
 { this.FlightForm = fb.group({
            Destination: ['' , Validators.maxLength(20)],
            Departure: ['', Validators.maxLength(20)],
            DepartDate: [''],
            Passengers: [''],
        });
      }

 GetFlights(FlightForm) {
      let Destination = this.FlightForm.value.Desintation
      let Departure = this.FlightForm.value.Departure
      let DepartDate = this.FlightForm.value.DepartDate
      let Passengers = this.FlightForm.value.Passengers
      this.router.navigate(['flight/GetFlights', { Destination, Departure, DepartDate, Passengers }]);
}


} 