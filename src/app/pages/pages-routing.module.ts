import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { TemplateComponent } from '../layouts/template/template/template.component';
import { HomeComponent } from './home/home.component';
import { VenderComponent } from './vender/vender.component';
import { ProductoComponent } from './producto/producto.component';

const routes: Routes = [
  {
    path: '',
    component: TemplateComponent,
    children: [
      { path: '', component: HomeComponent },
      { path: 'vender', component: VenderComponent },
      { path: ':producto/:id', component: ProductoComponent },
      { path: 'vender', component: VenderComponent },
      // {path: 'editar/:id',component: AgregarComponent},
      // {path: 'buscar',component: BuscarComponent},
      // {path: '**',redirectTo: 'dashboard'}
    ],
  },
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  declarations: [],
  exports: [RouterModule],
})
export class PagesRoutingModule {}
