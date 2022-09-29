import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { TemplateComponent } from './layouts/template/template/template.component';

const routes: Routes = [
  // { path: '', component: HomeComponent },
  {
    path: '',
    // component: TemplateComponent,
    loadChildren: () => import('./pages/pages.module').then((m) => m.PagesModule),
  },
  // {
  //   path: '',  
  //   loadChildren: () => import('./layouts/home/home.module').then((m) => m.HomeModule),
  // },
  // { path: '404', component: ErrorComponent },
  // { path: '**', redirectTo: 'error' },
];

@NgModule({
  imports: [RouterModule.forRoot(routes, {
    initialNavigation: 'enabledBlocking'
})],
  exports: [RouterModule]
})
export class AppRoutingModule { }
