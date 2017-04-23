import { Component, OnInIt } from '@angular/core';
import { RouteParams, Router } from '@angular/router';
import { FlightStatus } from './flightStatus';
import { FlightService } from '../../flight.service';
import { AuthService } from '../../auth.service';

@Component({
 selector: 'flight-status',
 templateUrl: './app/components/status/status.component.html',
 inputs: ['FlightId', 'Destination', 'Departure', 'DepartDate']
})

export class StatusComponent implements OnInIt {
    public flightStatus: FlightStatus[];


    constructor(private flightService: FlightService) {
    }

    ngOnInIt(Destination, Departure, DepartDate, FlightId) {
        this.GetFlights(Destination, Departure, DepartDate, FlightId);
    }

    GetFlightStatus(FlightId, Destination, Departure, DepartDate) {
        this.flightService.GetFlightStatus(FlightId, Destination, Departure, DepartDate).then(flights => this.flightStatus = flights);
    }

} 