import { Component } from '@angular/core';
import { NavController, NavParams } from 'ionic-angular';
import { PlaceModalPage } from '../place-modal/place-modal';
import { DatabaseProvider } from '../../../providers/database/database';
import { DomSanitizer } from '../../../../node_modules/@angular/platform-browser';
import {BaseComponent} from "../../BaseComponent";

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

  constructor(protected navCtrl: NavController, protected navParams: NavParams, protected databaseprovider: DatabaseProvider, public sanitizer: DomSanitizer) {
    super(navCtrl, navParams, databaseprovider);
  }

  onInit() {}

  loadData() {
    this.loadItineraryData();
    this.loadPlaceData();
  }

  loadItineraryData() {
    this.databaseprovider.getItireries().then(data => {
      this.itineraries = data;
    });
  }

  loadPlaceData() {
    this.databaseprovider.getPlaces().then(data => {
      this.places = data;
    });
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
