import { Component, OnInIt } from '@angular/core';
import { RouteParams, Router } from '@angular/router';
import { FlightStatus } from './flightStatus';
import { FlightService } from '../../flight.service';
import { AuthService } from '../../auth.service';
import { FormBuilder, Validators, FormGroup, CustomValidators } from '@angular/forms';


@Component({
 selector: 'flight-status',
 templateUrl: './app/components/status/status.component.html',
 inputs: ['FlightId', 'Destination', 'Departure', 'DepartDate']
})

export class StatusComponent implements OnInIt {
    FlightStatusForm: FormGroup;
    public flightStatus: FlightStatus[];
    public selectedFlight: FlightStatus;
    errorMessage: string;
    today: Date = new Date();
    FlightId: number;
    Destination: string;
    Departure: string;
    DepartDate: Date;



    constructor(private fb: FormBuilder, private flightService: FlightService, private router: Router) 
    { 
        this.FlightStatusForm = fb.group({
            FlightId: [''],
            Destination: ['', Validators.maxLength(20)],
            Departure: ['', Validators.maxLength(20)],
            DepartDate: ['']
        })
    }

    //ngOnInIt(Destination, Departure, DepartDate, FlightId) {
        //this.GetFlights(Destination, Departure, DepartDate, FlightId);
    //}

    GetFlightStatus(FlightStatusForm) 
    {
        let FlightId = this.FlightStatusForm.value.FlightId
        let Destination = this.FlightStatusForm.value.Destination
        let Departure = this.FlightStatusForm.value.Departure
        let DepartDate = this.FlightStatusForm.value.DepartDate
        this.router.navigate(['/flightstatus/GetFlightStatus'], {queryParams: { FlightId, Destination, Departure, DepartDate }});
    }
       
}

 