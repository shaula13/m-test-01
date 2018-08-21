import { Component } from '@angular/core';
import { NavController, NavParams } from 'ionic-angular';
import { DatabaseProvider } from '../../../providers/database/database';
import {BaseComponent} from "../../BaseComponent";


@Component({
  selector: 'page-place-modal',
  templateUrl: 'place-modal.html',
})
export class PlaceModalPage extends  BaseComponent{

  public firstParam;

  place = {};

  constructor(protected navCtrl: NavController, protected navParams: NavParams, protected databaseprovider: DatabaseProvider) {
    super(navCtrl, navParams, databaseprovider);
  }

  onInit() {
    this.firstParam = this.navParams.get("firstPassed");
  }

  loadData() {
    this.loadPlaceDataForId(this.firstParam);
  }

  loadPlaceDataForId(id) {
    this.databaseprovider.getPlaceForId(id).then(data => {
      this.place = data;
    });
  }

}
