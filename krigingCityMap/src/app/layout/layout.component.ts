import {Component, OnInit, ViewEncapsulation} from '@angular/core';
import {Router} from '@angular/router';

@Component({
  selector: 'app-layout',
  templateUrl: './layout.component.html',
  styleUrls: ['./layout.component.css'],
  encapsulation: ViewEncapsulation.None
})
export class LayoutComponent implements OnInit {

  constructor(public router: Router) { }

  ngOnInit() {
    if (this.router.url === '/' ) {
      this.router.navigate(['/map']); // '/map'
    }
  }

}
