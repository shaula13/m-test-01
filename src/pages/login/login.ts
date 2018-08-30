import { Component } from '@angular/core';
import {Events, LoadingController, NavController, NavParams, ViewController} from 'ionic-angular';
import {DomSanitizer} from "@angular/platform-browser";
import {DatabaseProvider} from "../../providers/database/database";
import {BaseComponent} from "../BaseComponent";

@Component({
  selector: 'page-login',
  templateUrl: 'login.html',
})
export class LoginPage extends BaseComponent {

  password: string;
  verifyPassword: false;

  constructor(protected navCtrl: NavController, protected navParams: NavParams, protected databaseprovider: DatabaseProvider,
              protected loadCtrl: LoadingController, public sanitizer: DomSanitizer, private view: ViewController, public events: Events) {
    super(navCtrl, navParams, databaseprovider, loadCtrl);
  }

  onInit() {}
  loadData() {}

  async updateStep(id) {
    await this.databaseprovider.updateStep(id);
  }

  async resetSteps() {
    await this.databaseprovider.resetSteps();
  }

  async loadAllSteps() {
    await this.databaseprovider.updateAllSteps();
  }

  publishEvent() {
    this.events.publish('reloadStepList');
    this.navCtrl.pop();
  }

  async checkPassword() {
    this.viewP();
    switch (this.password) {
      case '101010':
        await this.loadAllSteps();
        this.publishEvent();
        break;
      case '010101':
        await this.resetSteps();
        this.publishEvent();
        break;
      case '101011':
        await this.updateStep(1);
        this.publishEvent();
        break;
      case '101012':
        await this.updateStep(2);
        this.publishEvent();
        break;
      case '101013':
        await this.updateStep(3);
        this.publishEvent();
        break;
      case '101014':
        await this.updateStep(4);
        this.publishEvent();
        break;
      case '101015':
        await this.updateStep(5);
        this.publishEvent();
        break;
      case '101016':
        await this.updateStep(6);
        this.publishEvent();
        break;
      case '101017':
        await this.updateStep(7);
        this.publishEvent();
        break;
      case '101018':
        await this.updateStep(8);
        this.publishEvent();
        break;
      case '101019':
        await this.updateStep(9);
        this.publishEvent();
        break;


    }
  }

  viewP() {
    console.log(this.password);
  }

  closeModal() {
    this.view.dismiss();
  }
}
