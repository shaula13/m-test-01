import { Component } from '@angular/core';
import {Events, LoadingController, NavController, NavParams, ToastController, ViewController} from 'ionic-angular';
import {DomSanitizer} from "@angular/platform-browser";
import {DatabaseProvider} from "../../providers/database/database";
import {BaseComponent} from "../BaseComponent";

@Component({
  selector: 'page-login',
  templateUrl: 'login.html',
})
export class LoginPage extends BaseComponent {

  password: string;

  constructor(protected navCtrl: NavController, protected navParams: NavParams, protected databaseprovider: DatabaseProvider,
              protected loadCtrl: LoadingController, public sanitizer: DomSanitizer, private view: ViewController, public events: Events,
              public toastCtrl: ToastController) {
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
        this.reload();
        this.spinnerShow(2000);
        break;
      case '010101':
        await this.resetSteps();
        this.publishEvent();
        this.reload();
        this.spinnerShow(2000);
        break;
      case '111111':
        this.presentToast();
        await this.updateStep(1);
        this.publishEvent();
        this.reload();
        this.spinnerShow(2000);
        break;
      case 'singapore':
        await this.updateStep(2);
        this.publishEvent();
        break;
      case 'pechino':
        await this.updateStep(3);
        this.publishEvent();
        break;
      case 'oslo':
        await this.updateStep(4);
        this.publishEvent();
        break;
      case 'stoccolma':
        await this.updateStep(5);
        this.publishEvent();
        break;
      case 'amsterdam':
        await this.updateStep(6);
        this.publishEvent();
        break;
      case 'mosca':
        await this.updateStep(7);
        this.publishEvent();
        break;
      case 'ilcairo':
        await this.updateStep(8);
        this.publishEvent();
        break;
      case '----':
        await this.updateStep(9);
        this.publishEvent();
        break;
      case 'ottawa':
        await this.updateStep(10);
        this.publishEvent();
        break;
      case 'reykjavik':
        await this.updateStep(11);
        this.publishEvent();
        break;
      case 'atene':
        await this.updateStep(12);
        this.publishEvent();
        break;

    }
  }

  presentToast() {
    const toast = this.toastCtrl.create({
      message: 'Disponibile nuova pagina',
      duration: 1500
    });
    toast.present();
  }

  viewP() {
    console.log(this.password);
  }

  closeModal() {
    this.view.dismiss();
  }

  reload(){
    //this.splashscreen.show();
    window.location.reload();
  }
}
