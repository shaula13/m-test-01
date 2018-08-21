import { Component, Input } from '@angular/core';
import { NavController, NavParams } from 'ionic-angular';
import { BaseComponent } from '../../BaseComponent';
import { DatabaseProvider } from '../../../providers/database/database';
import { DomSanitizer } from '../../../../node_modules/@angular/platform-browser';
import { PlaceModalPage } from '../place-modal/place-modal';

@Component({
  selector: 'page-general-itinerary',
  templateUrl: 'general-itinerary.html',
})
export class GeneralItineraryPage extends BaseComponent {

  @Input() id: number;
  
  itinerary = {};
  placesIt = [];
  rdy = false;

  constructor(protected navCtrl: NavController, protected navParams: NavParams, protected databaseprovider: DatabaseProvider, public sanitizer: DomSanitizer) {
    super(navCtrl, navParams, databaseprovider);
  }

  onInit() {}

  loadData() {
    this.databaseprovider.getPlaces().then(data => console.log(data));

    this.loadItineraryData(this.id);
    this.loadItineraryPlaceData(this.id);
  }

  loadItineraryData(id) {
    this.databaseprovider.getItineraryForId(id)
    .then(data => {
      this.itinerary = data;
    });
  }

  loadItineraryPlaceData(id) {
    this.databaseprovider.getItireriesPlace(id)
    .then(data => {
      this.placesIt = data;
    });
  }

  navigate(id) {
    this.navCtrl.push(PlaceModalPage, {
      firstPassed: id
    });
  }

}
