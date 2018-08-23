import { Component, ViewChild } from '@angular/core';
import { Nav, Platform } from 'ionic-angular';
import { StatusBar } from '@ionic-native/status-bar';
import { SplashScreen } from '@ionic-native/splash-screen';

import { HomePage } from '../pages/home/home';
import { GameListPage } from '../pages/games/game-list/game-list';
import { RestaurantListPage } from '../pages/restaurants/restaurant-list/restaurant-list';
import { GalleryPage } from '../pages/gallery/gallery';
import { ItineraryListPage } from '../pages/itineraries/itinerary-list/itinerary-list';
import { InfoPage } from '../pages/info/info';
import { LoginPage } from '../pages/special/login/login';
import {ScreenOrientation} from "@ionic-native/screen-orientation";

@Component({
  templateUrl: 'app.html'
})
export class MyApp {
  @ViewChild(Nav) nav: Nav;

  rootPage: any = HomePage;

  pages: Array<{title: string, icon:string, component: any}>;

  key: boolean = false;

  constructor(public platform: Platform, public statusBar: StatusBar, public splashScreen: SplashScreen, public screenOrientation: ScreenOrientation) {
    this.initializeApp();

    // used for an example of ngFor and navigation
    this.pages = [
      { title: 'Home', icon: 'home', component: HomePage },
      { title: 'Itinerari&Luoghi', icon: 'map', component: ItineraryListPage },
      { title: 'Localii&Specialità', icon: 'restaurant', component: RestaurantListPage },
      { title: 'Giochi', icon: 'game-controller-b', component: GameListPage },
      { title: 'Galleria', icon: 'images', component: GalleryPage },
      { title: (this.key ? 'sorpresa' : '????????'), icon: (this.key ? 'unlock' : 'lock'), component: LoginPage },
      { title: 'Info', icon: 'information-circle', component: InfoPage }
    ];

  }

  initializeApp() {
    this.platform.ready().then(() => {
      // Okay, so the platform is ready and our plugins are available.
      // Here you can do any higher level native things you might need.
      this.statusBar.hide();
      this.splashScreen.hide();
      this.screenOrientation.lock(this.screenOrientation.ORIENTATIONS.PORTRAIT_PRIMARY);
    });
  }

  openPage(page) {
    // Reset the content nav to have just this page
    // we wouldn't want the back button to show in this scenario
    this.nav.setRoot(page.component);
  }
}
