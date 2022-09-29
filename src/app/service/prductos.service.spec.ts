import { TestBed } from '@angular/core/testing';

import { PrductosService } from './prductos.service';

describe('PrductosService', () => {
  let service: PrductosService;

  beforeEach(() => {
    TestBed.configureTestingModule({});
    service = TestBed.inject(PrductosService);
  });

  it('should be created', () => {
    expect(service).toBeTruthy();
  });
});
