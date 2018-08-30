import { BrowserModule } from '@angular/platform-browser';
import { ErrorHandler, NgModule } from '@angular/core';
import { IonicApp, IonicErrorHandler, IonicModule } from 'ionic-angular';

import { MyApp } from './app.component';
import { HomePage } from '../pages/home/home';
import { ItineraryListPage } from '../pages/itineraries/itinerary-list/itinerary-list';
import { GeneralItineraryPage } from '../pages/itineraries/general-itinerary/general-itinerary';
import { PlaceModalPage } from '../pages/itineraries/place-modal/place-modal';
import { RestaurantListPage } from '../pages/restaurants/restaurant-list/restaurant-list';
import { RestaurantModalPage } from '../pages/restaurants/restaurant-modal/restaurant-modal';
import { GameListPage } from '../pages/games/game-list/game-list';
import { GameIntroPage } from '../pages/games/game-intro/game-intro';
import { ModalGamePage } from '../pages/games/modal-game/modal-game';
import { GameOnePage } from '../pages/games/game-one/game-one';
import { GameTwoPage } from '../pages/games/game-two/game-two';
import { GameThreePage } from '../pages/games/game-three/game-three';
import { GalleryPage } from '../pages/gallery/gallery';
import { SpecialDayPage } from '../pages/special/special-day/special-day';
import { StepModalPage } from '../pages/special/step-modal/step-modal';
import { LoginPage } from '../pages/login/login';
import { InfoPage } from '../pages/info/info';

import { StatusBar } from '@ionic-native/status-bar';
import { SplashScreen } from '@ionic-native/splash-screen';
import {ScreenOrientation} from "@ionic-native/screen-orientation";

import { DatabaseProvider } from '../providers/database/database';
import { HttpModule } from '@angular/http';
import { IonicStorageModule } from '@ionic/storage';
import { SQLitePorter } from '@ionic-native/sqlite-porter';
import { SQLite } from '@ionic-native/sqlite';

@NgModule({
  declarations: [
    MyApp,
    HomePage,
    ItineraryListPage,
    GeneralItineraryPage,
    PlaceModalPage,
    RestaurantListPage,
    RestaurantModalPage,
    GameListPage,
    GameIntroPage,
    ModalGamePage,
    GameOnePage,
    GameTwoPage,
    GameThreePage,
    GalleryPage,
    SpecialDayPage,
    StepModalPage,
    LoginPage,
    InfoPage
  ],
  imports: [
    BrowserModule,
    HttpModule,
    IonicStorageModule.forRoot(),
    IonicModule.forRoot(MyApp)
  ],
  bootstrap: [IonicApp],
  entryComponents: [
    MyApp,
    HomePage,
    ItineraryListPage,
    GeneralItineraryPage,
    PlaceModalPage,
    RestaurantListPage,
    RestaurantModalPage,
    GameListPage,
    GameIntroPage,
    ModalGamePage,
    GameOnePage,
    GameTwoPage,
    GameThreePage,
    GalleryPage,
    SpecialDayPage,
    StepModalPage,
    LoginPage,
    InfoPage
  ],
  providers: [
    StatusBar,
    SplashScreen,
    ScreenOrientation,
    {provide: ErrorHandler, useClass: IonicErrorHandler},
    DatabaseProvider,
    SQLitePorter,
    SQLite
  ]
})
export class AppModule {}
