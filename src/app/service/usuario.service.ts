import { FacebookLoginProvider, SocialAuthService, SocialUser } from '@abacritt/angularx-social-login';
import { Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root'
})
export class UsuarioService {

  user: SocialUser | undefined;  
  loggedIn: boolean | undefined;

  constructor(private authService: SocialAuthService) { 

    this.authService.authState.subscribe((user) => {
      this.user = user;
      this.loggedIn = user != null;
      console.log(user);
    });
    
  }
  
  signInWithFB(): void {
    this.authService.signIn(FacebookLoginProvider.PROVIDER_ID);
  }

  signOut(): void {
    this.authService.signOut();
  }
}
