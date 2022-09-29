import {
  FacebookLoginProvider,
  GoogleLoginProvider,
  SocialAuthService,
  SocialUser,
} from '@abacritt/angularx-social-login';
import { Component, OnInit } from '@angular/core';
import { UsuarioService } from 'src/app/service/usuario.service';
import { Menu } from '../../../interfaces/menu-interface';

@Component({
  selector: 'app-template',
  templateUrl: './template.component.html',
  styleUrls: ['./template.component.scss'],
})
export class TemplateComponent implements OnInit {

  public get usuario(): UsuarioService {
    return this._usuario;
  }

  public set usuario(value: UsuarioService) {
    this._usuario = value;
  }
  
  user: SocialUser | undefined;
  value = 'Clear me';
  loggedIn: boolean | undefined;
  menu: Menu = [
    {
      title: 'Dashboard',
      icon: 'home',
      link: './dashboard',
      color: '#ff7f0e',
    },
    {
      title: 'Generar',
      icon: 'add',
      link: './generar',
      color: '#ff7f0e',
    },
    {
      title: 'editar',
      icon: 'add',
      link: './editar',
      color: '#ff7f0e',
    },
    {
      title: 'Statistics',
      icon: 'bar_chart',
      color: '#ff7f0e',
      subMenu: [
        {
          title: 'Sales',
          icon: 'money',
          link: '/sales',
          color: '#ff7f0e',
        },
        {
          title: 'Customers',
          icon: 'people',
          color: '#ff7f0e',
          link: '/customers',
        },
      ],
    },
  ];

  constructor(private _usuario: UsuarioService) {}

  ngOnInit(): void {
   
  }
 

}
