import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';


import { AppComponent } from './app.component';
import { NotFoundComponent } from './not-found/not-found.component';
import {NotFoundModule} from './not-found/not-found.module';
import { LayoutComponent } from './layout/layout.component';
import {AppRoutingModule} from './app-routing.module';


@NgModule({
  declarations: [
    AppComponent,
    // LayoutComponent,
    // NotFoundComponent
  ],
  imports: [
    AppRoutingModule,
    BrowserModule,
    NotFoundModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
