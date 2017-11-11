import {Component, OnInit, ViewEncapsulation} from '@angular/core';
import {Http} from '@angular/http';

@Component({
  selector: 'app-header',
  templateUrl: './header.component.html',
  styleUrls: ['./header.component.css'],
  encapsulation: ViewEncapsulation.None
})
export class HeaderComponent implements OnInit {
  brand = "Krigging Cities";
  constructor( private http: Http) { }

  ngOnInit() {
  }

}
