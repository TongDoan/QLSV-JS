import { ComponentFixture, TestBed } from '@angular/core/testing';

import { SinhvienstartComponent } from './sinhvienstart.component';

describe('SinhvienstartComponent', () => {
  let component: SinhvienstartComponent;
  let fixture: ComponentFixture<SinhvienstartComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ SinhvienstartComponent ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(SinhvienstartComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
