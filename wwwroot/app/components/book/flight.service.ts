import {Injectable} from "@angular/core";
import {Http, Response} from "@angular/http";
import {Observable} from "rxjs/Observable";
import {Flight} from "./flight";

@Injectable()
export class FlightService {

 constructor(private http: Http) { }
 private baseUrl = "flight/"; // web api URL
 // calls the [GET] /api/items/GetLatest/{n} Web API method to retrieve the latest items.
 
 
 getFlights(Destination, Departure, DepartDate, Passengers) {
 var url = this.baseUrl + "GetFlights/";
 return this.http.get(url)
 .map(response => response.json())
 .catch(this.handleError);
 }
 // calls the [GET] /api/items/GetMostViewed/{n} Web API method to retrieve the most viewed items.
 

 
 
 // calls the [GET] /api/items/{id} Web API method to retrieve the item with the given id.
 get() {
 
 var url = this.baseUrl + 'get/';
 return this.http.get(url)
 .map(res => <Flight>res.json())
 .catch(this.handleError);
 }
 private handleError(error: Response) {
 // output errors to the console.
 console.error(error);
 return Observable.throw(error.json().error || "Server error");
}

}
