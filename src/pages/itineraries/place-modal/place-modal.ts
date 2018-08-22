import { Component } from '@angular/core';
import { LoadingController, NavController, NavParams } from 'ionic-angular';
import { DatabaseProvider } from '../../../providers/database/database';
import { BaseComponent } from "../../BaseComponent";

@Component({
  selector: 'page-place-modal',
  templateUrl: 'place-modal.html',
})
export class PlaceModalPage extends  BaseComponent{

  public firstParam;

  place = {};

  constructor(protected navCtrl: NavController, protected navParams: NavParams, protected databaseprovider: DatabaseProvider,
                protected loadCtrl: LoadingController) {
    super(navCtrl, navParams, databaseprovider, loadCtrl);
  }

  onInit() {
    this.firstParam = this.navParams.get("firstPassed");
  }

  async loadData() {
    await this.loadPlaceDataForId(this.firstParam).then(data => { this.place = data; });
  }

  async loadPlaceDataForId(id): Promise<any[]> {
    return await this.databaseprovider.getPlaceForId(id);
  }

}
