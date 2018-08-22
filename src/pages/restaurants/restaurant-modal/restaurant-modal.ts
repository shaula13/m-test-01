import { Component } from '@angular/core';
import { LoadingController, NavController, NavParams } from 'ionic-angular';
import { DatabaseProvider } from '../../../providers/database/database';
import { BaseComponent } from "../../BaseComponent";
import { DomSanitizer } from "@angular/platform-browser";

@Component({
  selector: 'page-restaurant-modal',
  templateUrl: 'restaurant-modal.html',
})
export class RestaurantModalPage extends BaseComponent {

  public firstParam;
  public secondParam;
  item = {};
  title: string;

  constructor(protected navCtrl: NavController, protected navParams: NavParams, protected databaseprovider: DatabaseProvider,
              protected loadCtrl: LoadingController, public sanitizer: DomSanitizer) {
    super(navCtrl, navParams, databaseprovider, loadCtrl);
  }

  onInit() {
    this.firstParam = this.navParams.get("firstPassed");
    this.secondParam = this.navParams.get("secondPassed");
  }

  async loadData() {
    //this.spinnerShow(1000);
    if(this.secondParam) {
      await this.loadRestaurantForId().then(data => { this.item = data; });
      this.title = "Locale";
    } else {
      await this.loadFoodForId().then(data => { this.item = data; });
      this.title = "Specialità";
    }
  }

  async loadRestaurantForId() {
    return await this.databaseprovider.getRestaurantForId(this.firstParam);
  }

  async loadFoodForId() {
    return await this.databaseprovider.getFoodForId(this.firstParam);
  }

}
