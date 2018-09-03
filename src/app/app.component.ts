import { Component, ViewChild } from '@angular/core';
import {Events, LoadingController, Nav, Platform} from 'ionic-angular';
import { StatusBar } from '@ionic-native/status-bar';
import { SplashScreen } from '@ionic-native/splash-screen';
import { ScreenOrientation } from "@ionic-native/screen-orientation";

import { HomePage } from '../pages/home/home';
import { ItineraryListPage } from '../pages/itineraries/itinerary-list/itinerary-list';
import { RestaurantListPage } from '../pages/restaurants/restaurant-list/restaurant-list';
import { GameListPage } from '../pages/games/game-list/game-list';
import { GalleryPage } from '../pages/gallery/gallery';
import { SpecialDayPage } from '../pages/special/special-day/special-day';
import { InfoPage } from '../pages/info/info';
import {BaseComponent} from "../pages/BaseComponent";
import {DatabaseProvider} from "../providers/database/database";

@Component({
  templateUrl: 'app.html'
})
export class MyApp extends BaseComponent{
  @ViewChild(Nav) nav: Nav;

  rootPage: any = HomePage;

  pages: Array<{title: string, icon:string, component: any, visible: Boolean}>;

  steps = [];

  key: boolean = false;

  constructor(public databaseprovider: DatabaseProvider, public loadCtrl: LoadingController, public platform: Platform,
                public statusBar: StatusBar, public splashScreen: SplashScreen, public screenOrientation: ScreenOrientation, public events: Events) {

    super(null, null, databaseprovider, loadCtrl);

    this.initializeApp();

    // used for an example of ngFor and navigation
    this.pages = [
      { title: 'Home', icon: 'home', component: HomePage, visible: true },
      { title: 'Itinerari&Luoghi', icon: 'map', component: ItineraryListPage, visible: true },
      { title: 'Localii&Specialità', icon: 'restaurant', component: RestaurantListPage, visible: true },
      { title: 'Giochi', icon: 'game-controller-b', component: GameListPage, visible: true },
      { title: 'Galleria', icon: 'images', component: GalleryPage, visible: true },
      { title: 'Sorpresa', icon: 'unlock', component: SpecialDayPage, visible: false },
      { title: 'Info', icon: 'information-circle', component: InfoPage, visible: true }
    ];
  }

  onInit() {}

  async loadData() {
    await this.loadStepUnlocked().then(data => {
      this.steps = data;
      if (this.steps.length > 0) {
        this.showPage();
      }
    });
  }

  async loadStepUnlocked() {
    return await this.databaseprovider.getUnlockedSteps();
  }

  initializeApp() {
    this.platform.ready().then(() => {
      // Okay, so the platform is ready and our plugins are available.
      // Here you can do any higher level native things you might need.
      this.statusBar.hide();
      this.splashScreen.hide();
      console.log('init');
      this.screenOrientation.lock(this.screenOrientation.ORIENTATIONS.PORTRAIT_PRIMARY);
    });
  }

  openPage(page) {
    // Reset the content nav to have just this page
    // we wouldn't want the back button to show in this scenario
    this.nav.setRoot(page.component);
  }

  showPage() {
    this.key = !this.key;
  }

}
