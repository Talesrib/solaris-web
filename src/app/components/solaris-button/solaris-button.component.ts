import { Component, Input } from '@angular/core';

export enum Variation {
  primary = 'primary',
  secondary = 'secondary',
  generate = 'generate',
}

@Component({
  selector: 'app-solaris-button',
  templateUrl: './solaris-button.component.html',
  styleUrls: ['./solaris-button.component.css']
})
export class SolarisButtonComponent {

  public variations = Variation
  @Input() variation: Variation = Variation.primary

}
