import { Component } from '@angular/core';
import { LoadingController, NavController, NavParams } from 'ionic-angular';
import { PlaceModalPage } from '../place-modal/place-modal';
import { DatabaseProvider } from '../../../providers/database/database';
import { DomSanitizer } from '../../../../node_modules/@angular/platform-browser';
import { BaseComponent } from "../../BaseComponent";

@Component({
  selector: 'page-itinerary-list',
  templateUrl: 'itinerary-list.html',
})
export class ItineraryListPage  extends  BaseComponent{

  itineraries = [];
  places = [];
  // placesIt = [];
  isItinerary: boolean = true;
  isPlace: boolean = false;
  // isDetail=false;

  constructor(protected navCtrl: NavController, protected navParams: NavParams, protected databaseprovider: DatabaseProvider,
                protected loadCtrl: LoadingController, public sanitizer: DomSanitizer) {
    super(navCtrl, navParams, databaseprovider, loadCtrl);
  }

  onInit() {}

  async loadData() {
    this.spinnerShow(1000);
    await this.loadItineraryData().then(data => { this.itineraries = data; });
    await this.loadPlaceData().then(data => { this.places = data; });
  }

  async loadItineraryData(): Promise<any[]> {
    return await this.databaseprovider.getItireries();
  }

  async loadPlaceData(): Promise<any[]> {
    return await this.databaseprovider.getPlaces();
  }

  navigate(id) {
    this.navCtrl.push(PlaceModalPage, {
      firstPassed: id,
      secondPassed: this.isPlace
    });
  }

  isItineraryOnClick() {
    this.isItinerary = true;
    this.isPlace = false;
  }

  isPlaceOnClick() {
    this.isPlace = true;
    this.isItinerary = false;
  }

}
