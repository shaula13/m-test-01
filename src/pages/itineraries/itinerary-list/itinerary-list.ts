import { Component } from '@angular/core';
import { NavController, NavParams } from 'ionic-angular';
import { PlaceModalPage } from '../place-modal/place-modal';
import { DatabaseProvider } from '../../../providers/database/database';
import { DomSanitizer } from '../../../../node_modules/@angular/platform-browser';

@Component({
  selector: 'page-itinerary-list',
  templateUrl: 'itinerary-list.html',
})
export class ItineraryListPage {

  itineraries = [];
  places = [];
  // placesIt = [];
  isItinerary: boolean = true;
  isPlace: boolean = false;
  // isDetail=false;

  constructor(public navCtrl: NavController, public navParams: NavParams, private databaseprovider: DatabaseProvider, public sanitizer: DomSanitizer) {
    this.databaseprovider.getDatabaseState().subscribe(rdy => {
      if (rdy) {
        this.loadItineraryData();
        this.loadPlaceData();
      }
    });

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
