import {Injectable} from "@angular/core";
import {Http, Response} from "@angular/http";
import {Observable} from "rxjs/Observable";
import {Flight} from "./flight";
import {AuthService} from '../../auth.service';

@Injectable()
export class FlightService {

 constructor(private http: Http) { }
 private baseUrl = "flight/"; // web api URL
 // calls the [GET] /api/items/GetLatest/{n} Web API method to retrieve the latest items.
 
 
 getFlights(num?: number) {
 var url = this.baseUrl + "GetFlights/";
 if (num != null) { url += num; }
 return this.http.get(url)
 .map(response => response.json())
 .catch(this.handleError);
 }
 // calls the [GET] /api/items/GetMostViewed/{n} Web API method to retrieve the most viewed items.
 

 
 
 // calls the [GET] /api/items/{id} Web API method to retrieve the item with the given id.
 get(id: number) {
 if (id == null) { throw new Error("id is required."); }
 var url = this.baseUrl + id;
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
