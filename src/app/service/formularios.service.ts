import { Injectable } from '@angular/core';
import { FormGroup } from '@angular/forms';

@Injectable({
  providedIn: 'root',
})
export class FormulariosService {
 

  constructor() {}

  agregarParametros(_formulario: FormGroup, archivos: FileList | []): FormData {

    const frm = new FormData();
    const formData = _formulario.value;

    Object.keys(formData).forEach((key) => {
      frm.append(key, formData[key]);
    });

    Array.from(archivos).forEach((file) => {
      frm.append('file[]', file);
    });    
    return frm;
  }
}
