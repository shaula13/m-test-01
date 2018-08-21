import { Component } from '@angular/core';
import { NavController, NavParams } from 'ionic-angular';
import { DatabaseProvider } from '../../../providers/database/database';

@Component({
  selector: 'page-place-modal',
  templateUrl: 'place-modal.html',
})
export class PlaceModalPage {

  public firstParam;
  public secondParam;
 
  allPlaces = [];
  places = [];

  constructor(public navCtrl: NavController, public navParams: NavParams, private databaseprovider: DatabaseProvider) {
    this.firstParam = navParams.get("firstPassed");
    this.secondParam = navParams.get("secondPassed");
  
    this.loadItineraryPlaceData(this.firstParam);
    this.loadPlaceData();
  }

  loadPlaceData() {
    this.databaseprovider.getPlaces().then(data => {
      this.allPlaces = data;
    });
  }

  loadItineraryPlaceData(id) {
    this.databaseprovider.getItireriesPlace(id).then(data => {
      this.places = data;
    });
  }

  load(event, www) {
    event.preventDefault();
    window.open(www, '_system', 'location=yes');
  }

}
