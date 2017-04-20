import { ModuleWithProviders } from "@angular/core";
import { Routes, RouterModule } from "@angular/router";
import { HomeComponent } from './components/home/home.component';
import { BookComponent } from './components/book/book.component';
import { LoginComponent } from './components/login/login.component';
import { CheckoutComponent } from './components/book/checkout.component';
import { FlightListComponent } from './components/book/Flightlist.component';
import { MyticketsComponent } from './components/mytickets/mytickets.component';

const appRoutes: Routes = [
    {
        path: "",
        component: HomeComponent
    },
    {
        path: "home",
        redirectTo: ""    },
    {
        path: "flight",
        component: BookComponent
    },
    {
        path: "flight/GetFlights",
        component: BookComponent
    },
    {
        path: "flight/GetFlights",
        component: FlightListComponent
    },
    {
        path: "checkout",
        component: CheckoutComponent
    },
    
    {
        path: "login",
        component: LoginComponent
    },
    {
        path:"mytickets",
        component: MyticketsComponent
    }];
    
    export const AppRoutingProviders: any[] = [];
export const AppRouting: ModuleWithProviders = RouterModule.forRoot(appRoutes);