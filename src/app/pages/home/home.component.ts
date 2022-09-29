import { Component, OnInit } from '@angular/core';
import { PrductosService } from '../../service/prductos.service';
import { Producto } from '../../interfaces/producto-interface';

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.scss']
})
export class HomeComponent implements OnInit {
  
  public producto : Producto[] = [];

  constructor(private productos: PrductosService) { }

  ngOnInit(): void {
    this.listaProductos();
  }

  listaProductos(){
    this.productos.lista().subscribe((productos) => {
      this.producto = productos;      
      console.log(productos);
    })  
  }

}
