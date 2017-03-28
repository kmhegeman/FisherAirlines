import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { HttpModule } from '@angular/http';
import { FormsModule }    from '@angular/forms';

import 'rxjs/Rx';
// import our application component
import { AppComponent } from './app.component';
import { NavBarComponent } from './components/navbar/navbar.component';
import { BookComponent } from './components/book/book.component';
import { FlightListComponent } from './components/book/Flightoptionlist';
import { HomeComponent } from './components/home/home.component'


@NgModule({
 declarations: [
 AppComponent,
 FlightListComponent,
 HomeComponent,
 NavBarComponent,
 BookComponent,
 ], 
 imports: [

 BrowserModule,
 HttpModule
 ],
 providers: [ 
      ],
 bootstrap: [
 AppComponent
 ],
})
export class AppModule { 

} 