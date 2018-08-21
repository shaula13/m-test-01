import { Component } from '@angular/core';
import { NavController, NavParams } from 'ionic-angular';
import { DatabaseProvider } from '../../../providers/database/database';

@Component({
  selector: 'page-restaurant-modal',
  templateUrl: 'restaurant-modal.html',
})
export class RestaurantModalPage {

  public firstParam;
  public secondParam;
  item = {};
  title: string;

  constructor(public navCtrl: NavController, public navParams: NavParams, private databaseprovider: DatabaseProvider) {
    this.firstParam = navParams.get("firstPassed");
    this.secondParam = navParams.get("secondPassed");
    if(this.secondParam) {
      this.loadRestaurantForId();
      this.title = "Locale";
    } else {
      this.loadFoodForId();
      this.title = "Specialità";
    }
  }

  loadRestaurantForId() {
    this.databaseprovider.getRestaurantForId(this.firstParam).then(data => {
      this.item = data;
    });
  }
  
  loadFoodForId() {
    this.databaseprovider.getFoodForId(this.firstParam).then(data => {
      this.item = data;
    });
  }

  load(event, www) {
    event.preventDefault();
    window.open(www, '_system', 'location=yes');
  }

}
