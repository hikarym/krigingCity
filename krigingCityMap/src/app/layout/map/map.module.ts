import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { MapRoutingModule } from './map-routing.module';
import {LeafletModule} from '@asymmetrik/ngx-leaflet';
import {LeafletMarkerClusterModule} from '@asymmetrik/ngx-leaflet-markercluster';
import {MapComponent} from './map.component';

@NgModule({
  imports: [
    CommonModule,
    MapRoutingModule,
    LeafletModule,
    LeafletMarkerClusterModule
  ],
  declarations: [MapComponent]
})
export class MapModule { }
