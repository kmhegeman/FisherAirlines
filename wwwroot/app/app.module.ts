import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { HttpModule } from '@angular/http';
import { RouterModule } from '@angular/router';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';

import 'rxjs/Rx';
// import our application component
import { AppComponent } from './app.component';
import { NavBarComponent } from './components/navbar/navbar.component';
import { BookComponent } from './components/book/book.component';
import { HomeComponent } from './components/home/home.component'
import { LoginComponent } from './components/login/login.component'
import { CheckoutComponent } from './components/book/checkout.component';
import { FlightListComponent } from './components/book/Flightlist.component';

import { AppRouting } from './app.routing';
import { AuthService } from "./auth.service";
import { AuthHttp } from "./auth.http";
import { FlightService } from "./flight.service"

@NgModule({
 declarations: [
 AppComponent,
 HomeComponent,
 LoginComponent,
 NavBarComponent,
 CheckoutComponent,
 FlightListComponent,
 BookComponent,
 ], 
 imports: [
        BrowserModule,
        HttpModule,
        FormsModule,
        ReactiveFormsModule,
        RouterModule,
        AppRouting
 ],
 providers: [ 
        AuthService,
        AuthHttp,
        FlightService
      ],
 bootstrap: [
 AppComponent
 ],
})
export class AppModule { } 