import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { HomeComponent } from './home/home.component';
import { TemplateModule } from '../layouts/template/template.module';
import { PagesRoutingModule } from './pages-routing.module';
import { AngularMaterialModule } from 'src/app/module/angular-material.module';
import { VenderComponent } from './vender/vender.component';

import { ProductoComponent } from './producto/producto.component';
import { SlugifyPipe } from './pipes/slugify.pipe';
import { AngularEditorModule } from '@kolkov/angular-editor';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';


@NgModule({
  declarations: [
    HomeComponent,
    VenderComponent,
    ProductoComponent,
    SlugifyPipe,
  ],
  imports: [
    CommonModule,
    TemplateModule,
    PagesRoutingModule,
    AngularMaterialModule,
    AngularEditorModule,
    ReactiveFormsModule,
    FormsModule
  ],
})
export class PagesModule {}
