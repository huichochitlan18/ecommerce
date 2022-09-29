import { Component, Inject, OnInit, PLATFORM_ID } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { PrductosService } from '../../service/prductos.service';
import { switchMap } from 'rxjs/operators';
import { Producto } from 'src/app/interfaces/producto-interface';
import { isPlatformBrowser } from '@angular/common';

@Component({
  selector: 'app-producto',
  templateUrl: './producto.component.html',
  styleUrls: ['./producto.component.scss'],
})
export class ProductoComponent implements OnInit {

  public producto!: Producto;

  constructor(
    private activatedRoute: ActivatedRoute,
    private productos: PrductosService    
  ) {}

  ngOnInit(): void {

    this.activatedRoute.params
      .pipe(switchMap(({ id }) => this.productos.producto(id)))
      .subscribe((producto) => (this.producto = producto));

  }
}
