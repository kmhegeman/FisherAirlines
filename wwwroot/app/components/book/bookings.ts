export class Bookings {
 constructor(
 public ConfirmationNumber: number,
 public Id: number,
 public Username: string,
 public Departure: string,
 public Destination: string,
 public DepartDate: Date, 
 public ArrivalTime: Date,
 public Passengers: number,
 public Price: number
 ) { }
}