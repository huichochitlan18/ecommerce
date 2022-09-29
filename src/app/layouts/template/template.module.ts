import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { MenuComponent } from './menu/menu.component';
import { TemplateComponent } from './template/template.component';
import { AngularMaterialModule } from 'src/app/module/angular-material.module';
import { RouterModule } from '@angular/router';
import { PagesRoutingModule } from '../../pages/pages-routing.module';
import { FormsModule } from '@angular/forms';



@NgModule({
  declarations: [
    MenuComponent,
    TemplateComponent
  ],
  imports: [
    CommonModule,
    AngularMaterialModule,
    RouterModule,
    PagesRoutingModule,    
    FormsModule
  ],  
})
export class TemplateModule { }
