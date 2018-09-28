import { Component } from '@angular/core';
import {Events, LoadingController, ModalController, NavController, NavParams} from 'ionic-angular';
import {BaseComponent} from "../../BaseComponent";
import {DomSanitizer} from "@angular/platform-browser";
import {DatabaseProvider} from "../../../providers/database/database";
import {StepModalPage} from "../step-modal/step-modal";
import {LoginPage} from "../../login/login";

@Component({
  selector: 'page-special-day',
  templateUrl: 'special-day.html',
})
export class SpecialDayPage extends BaseComponent {

  steps = [];
  images: Array<{url: any}>;

  constructor(protected navCtrl: NavController, protected navParams: NavParams, protected databaseprovider: DatabaseProvider,
              protected loadCtrl: LoadingController, public sanitizer: DomSanitizer, private modalCtrl: ModalController, public events: Events) {
    super(navCtrl, navParams, databaseprovider, loadCtrl);

    this.listenEvents();

    this.images = [
      {url: 's-d1.jpg'},
      {url: 's-d2.jpg'},
      {url: 's-d3.jpg'},
      {url: 's-d4.jpg'},
      {url: 's-d5.jpg'},
      {url: 's-d6.jpg'}
    ];

  }

  onInit() {}

  async loadData() {
    //this.spinnerShow(1000);
    await this.loadStepUnlocked().then(data => { this.steps = data; });
  }

  async loadStepUnlocked() {
    return await this.databaseprovider.getUnlockedSteps();
  }

  listenEvents(){
    this.events.subscribe('reloadStepList',() => {
      this.loadData();
    });
  }

  openModal() {
    const modal = this.modalCtrl.create(LoginPage, { }, {
      enableBackdropDismiss: false,
    });

    modal.present();
  }

  goToNewStep() {
    this.openModal()
  }

  navigate(id) {
    this.navCtrl.push(StepModalPage, {
      firstPassed: id
    });
  }

}
