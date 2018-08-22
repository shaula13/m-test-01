import { Component, Input } from '@angular/core';
import { LoadingController, NavController, NavParams } from 'ionic-angular';
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

  constructor(protected navCtrl: NavController, protected navParams: NavParams, protected databaseprovider: DatabaseProvider,
                protected loadCtrl: LoadingController, public sanitizer: DomSanitizer) {
    super(navCtrl, navParams, databaseprovider, loadCtrl);
  }

  onInit() {}

  async loadData() {
    //this.spinnerShow();
    await this.loadItineraryData(this.id).then(data => { this.itinerary = data; });
    await this.loadItineraryPlaceData(this.id).then(data => { this.placesIt = data; });
  }

  async loadItineraryData(id) {
    return await this.databaseprovider.getItineraryForId(id);
  }

  async loadItineraryPlaceData(id) {
    return await this.databaseprovider.getItireriesPlace(id);
  }

  navigate(id) {
    this.navCtrl.push(PlaceModalPage, {
      firstPassed: id
    });
  }

}
