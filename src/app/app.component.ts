import { Component } from '@angular/core';
import { Variation } from './components/solaris-button/solaris-button.component';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {
  title = 'solaris-web';
  public variation = Variation
}
