import { Component, OnInit, ViewEncapsulation } from '@angular/core';
import * as L from 'leaflet';
import 'leaflet.markercluster';

@Component({
  selector: 'app-map',
  templateUrl: './map.component.html',
  styleUrls: ['./map.component.css'],
  encapsulation: ViewEncapsulation.None
})
export class MapComponent implements OnInit {
  schoolSelectedFlag= false;
  centerLat = -23.552133;
  centerLng = -46.6331418;
  schoolsCoordinates: any;
  schoolSelectedID: string;
  schoolMarkerIcon = L.icon({iconUrl: 'assets/images/marcador_school_default.png'});
  selectedSchoolMarkerIcon = L.icon({iconUrl: 'assets/images/marcador_school_selected.png'});
  neighborhoodRadius = 2000;
  neighboringSchoolsLayer: any;

  LAYER_OSM = {
    id: 'openstreetmap',
    name: 'Open Street Map',
    enabled: false,
    layer: L.tileLayer('http://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
      minZoom: 1,
      maxZoom: 19,
      attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
    })
  };
  LAYER_GSM = {
    id: 'googlemaps',
    name: 'Google Street Maps',
    enabled: false,
    layer: L.tileLayer('https://maps.googleapis.com/maps/vt?pb=!1m5!1m4!1i{z}!2i{x}!3i' +
      '{y}!4i256!2m3!1e0!2sm!3i349018013!3m9!2sen-US!3sUS!5e18!12m1!1e47!12m3!1e37!2m1!1ssmartmaps!4e0', {
      minZoom: 1,
      maxZoom: 22,
      attribution: '&copy; <a href=\'http://maps.google.com\'>Google Maps</a>'
    })
  };

  // Values to bind to Leaflet Directive
  layersControlOptions = { position: 'bottomright' };
  baseLayers = {
    'Google Street Maps': this.LAYER_GSM.layer,
    'Open Street Map': this.LAYER_OSM.layer
  };
  zoom = 14;
  // zoomOptions= L.control.zoom({position: 'topright'});
  zoomOptions = {
    position: 'topright'
  }
  center = L.latLng([this.centerLat, this.centerLng]);

  // Marker cluster stuff
  markerClusterGroup: L.MarkerClusterGroup;
  markerClusterData: any[] = [];
  markerClusterOptions: L.MarkerClusterGroupOptions;




  constructor() { }

  ngOnInit() {
  }

  markerClusterReady(group: L.MarkerClusterGroup) {
    this.markerClusterGroup = group;
  }

}
