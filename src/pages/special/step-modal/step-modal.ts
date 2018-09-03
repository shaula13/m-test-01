import { Component } from '@angular/core';
import { LoadingController, NavController, NavParams } from 'ionic-angular';
import {DomSanitizer} from "@angular/platform-browser";
import {DatabaseProvider} from "../../../providers/database/database";
import {BaseComponent} from "../../BaseComponent";

@Component({
  selector: 'page-step-modal',
  templateUrl: 'step-modal.html',
})
export class StepModalPage extends BaseComponent{

  id: number;
  step = {};

  constructor(protected navCtrl: NavController, protected navParams: NavParams, protected databaseprovider: DatabaseProvider,
              protected loadCtrl: LoadingController, public sanitizer: DomSanitizer) {
    super(navCtrl, navParams, databaseprovider, loadCtrl);
  }

  onInit() {
    this.id = this.navParams.get("firstPassed");
  }

  async loadData() {
    //this.spinnerShow(1000);
    await this.loadStepForId().then(data => { this.step = data; });
  }

  async loadStepForId() {
    return await this.databaseprovider.getStepForId(this.id);
  }

}
