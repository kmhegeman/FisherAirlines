
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
import { FlightListComponent } from './components/book/Flightoptionlist';
import { HomeComponent } from './components/home/home.component'
import { LoginComponent } from './components/login/login.component'


import { AppRouting } from './app.routing';
import { AuthService } from "./auth.service";
import { AuthHttp } from "./auth.http";

@NgModule({
 declarations: [
 AppComponent,
 FlightListComponent,
 HomeComponent,
 LoginComponent,
 NavBarComponent,
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
        AuthHttp
      ],
 bootstrap: [
 AppComponent
 ],
})
export class AppModule { } 