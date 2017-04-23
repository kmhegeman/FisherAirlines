export class Flight {
 constructor(
 public Id: number,
 public Departure: string,
 public Destination: string,
 public DepartDate: Date,
 public AvailableSeats: number,
 public Price: number
 ) { }
}
