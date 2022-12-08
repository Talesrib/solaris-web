import { ComponentFixture, TestBed } from '@angular/core/testing';

import { SolarisButtonComponent } from './solaris-button.component';

describe('SolarisButtonComponent', () => {
  let component: SolarisButtonComponent;
  let fixture: ComponentFixture<SolarisButtonComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ SolarisButtonComponent ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(SolarisButtonComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
