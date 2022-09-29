import { Component, Inject, OnInit, PLATFORM_ID } from '@angular/core';
import {
  FormBuilder,
  FormGroup,
  UntypedFormBuilder,
  UntypedFormGroup,
  Validators,
} from '@angular/forms';
import { AngularEditorConfig } from '@kolkov/angular-editor';
import { UsuarioService } from 'src/app/service/usuario.service';
import { PrductosService } from '../../service/prductos.service';
import { FormulariosService } from '../../service/formularios.service';
import { isPlatformBrowser } from '@angular/common';
import { catchError, map, throwError } from 'rxjs';
import { ThemePalette } from '@angular/material/core';
import { validateVerticalPosition } from '@angular/cdk/overlay';
@Component({
  selector: 'app-vender',
  templateUrl: './vender.component.html',
  styleUrls: ['./vender.component.scss'],
})
export class VenderComponent implements OnInit {
  public producto!: FormGroup;

  formulario!: FormData;

  selectedFile: FileList | [] = [];

  archivos: any = [];

  config: AngularEditorConfig = {
    editable: true,
    spellcheck: true,
    height: '15rem',
    minHeight: '5rem',
    placeholder: 'Enter text here...',
    translate: 'no',
    defaultParagraphSeparator: 'p',
    defaultFontName: 'Arial',
    toolbarHiddenButtons: [
      ['bold'],
      ['link', 'unlink', 'insertVideo', 'toggleEditorMode'],
    ],

    uploadUrl: 'http://localhost/imagen/',
  };

  constructor(
    private fb: FormBuilder,
    public usuario: UsuarioService,
    private _producto: PrductosService,
    private _frm: FormulariosService,
    @Inject(PLATFORM_ID) private platformId: Object
  ) {}

  ngOnInit(): void {
    this.producto = this.fb.group({
      idUsuario: ['sdfg', Validators.required],
      stock: ['asdf', Validators.required],
      nombre: ['asdf', Validators.required],
      precio: ['asdf', Validators.required],
      files: ['', Validators.required],
      htmlContent: ['asdfasdf', Validators.required],
    });
  }

  test(index: any) {
    console.log(index);
    // console.log(this.producto.value);
    // console.log(this.usuario.user?.id);
  }
  eliminarArchivo(index: any) {
    this.archivos.splice(index, 1);

    this.formulario = this._frm.agregarParametros(this.producto, this.archivos);
    // console.log(this.archivos);
  }

  onFileChanged(event: any) {
    this.selectedFile = event;

    if (this.archivos.length == 0) {
      this.archivos = Array.from(this.selectedFile);
    } else {
      this.archivos = this.archivos.concat(Array.from(this.selectedFile));
    }

    this.producto.patchValue({
      files: this.selectedFile,
    });

    this.producto.get('files')?.updateValueAndValidity();

    console.log(this.archivos);

    this.formulario = this._frm.agregarParametros(this.producto, this.archivos);
  }
  crearProducto(): void {
    // console.log(this.formulario.get('file'));
    if (this.producto.valid && this.archivos.length > 0) {
      this._producto.agregar(this.formulario).subscribe({
        next: (data: any) => {
          console.log(data);
        },
        error: (err: any) => {
          console.log(err);
        },
      });
    } else {
      console.log('test2');
    }
  }

  onUpload() {
    //Here you send 'this.selectedFiles' to the server..
  }
}
