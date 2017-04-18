import {Injectable} from "@angular/core";
import {Http, Response} from "@angular/http";
import {Observable} from "rxjs/Observable";
import {Flight} from "./components/book/flight";
import {Bookings} from "./components/book/bookings";

@Injectable()
export class FlightService {

 constructor(private http: Http) { }
 private baseUrl = ""; // web api URL


 // calls the [GET] /flight/GetFlights/{n} Web API method to retrieve flights from flights controller.
 
 GetFlights(Destination, Departure, DepartDate, Passengers) {
 var url = this.baseUrl + "flight/GetFlights/";
 return this.http.get(url)
 .map(response => response.json())
 .catch(this.handleError);
}

// updates the [PUT] /flight/UpdateSeats/{n} Web API method to update flights in the flights controller.
 
 updateSeats(Id, Flight, Passengers) {
 var url = this.baseUrl + "flight/UpdateSeats";
 return this.http.get(url)
 .map(response => response.json())
 .catch(this.handleError);
}

// updates the [GET] /flightstatus/get flightstatus/{n} Web API method to retrive flights in the flightstatus controller.

 GetFlightStatus(FlightId, Destination, Departure, DepartDate) {
 var url = this.baseUrl + "flightstatus/GetFlightStatus/";
 return this.http.get(url)
 .map(response => response.json())
 .catch(this.handleError);
 }
 // updates the [POST] /checkout/{n} Web API method to add bookings in the bookings controller.
 
 Checkout(Bookings) {
 var url = this.baseUrl + "checkout/";
 return this.http.get(url)
 .map(response => response.json())
 .catch(this.handleError);
}
 
 
 // calls the [GET] /GetTickets/{id} Web API method to retrieve the tickets from the Bookings controller.

 get(username: string, id: number) {
 var url = this.baseUrl + "GetTickets";
 return this.http.get(url)
 .map(response => response.json())
 .catch(this.handleError);
}


 private handleError(error: Response) {
 // output errors to the console.
 console.error(error);
 return Observable.throw(error.json().error || "Server error");
}

}