import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { catchError, map, Observable, throwError } from 'rxjs';
import { environment } from '../../environments/environment';
import { Producto } from '../interfaces/producto-interface';

@Injectable({
  providedIn: 'root'
})
export class PrductosService {
  
  private baseUrl: string = environment.baseUrl;
  
  constructor(private http: HttpClient) { }

  lista():Observable<Producto[]>{
    return this.http.get<Producto[]>(`${ this.baseUrl }/products`);
  }

  producto(id:any):Observable<Producto>{
    return this.http.get<Producto>(`${ this.baseUrl }/products/${ id }`);
  }

  agregar(Daatos:any){
    return this.http.post(`http://localhost/imagen/`,Daatos,{
      reportProgress:true,
      observe:'events'
    }).pipe(
      catchError(() => {
        return throwError(() => new Error('error en la peticion'));
      })
    );
  }

}
