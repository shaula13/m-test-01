import { Component } from '@angular/core';
import { ModalController, NavController, NavParams } from 'ionic-angular';
import { LoginPage } from "../login/login";

@Component({
  selector: 'page-info',
  templateUrl: 'info.html',
})
export class InfoPage{

  click = 0;

  constructor(public navCtrl: NavController, public navParams: NavParams, private modalCtrl: ModalController) { }

  countClick() {
    this.click++;
    console.log(this.click);
    if (this.click == 10) {
      this.openModal();
    }
  }

  openModal() {
    const modal = this.modalCtrl.create(LoginPage, { }, {
      enableBackdropDismiss: false,
    });

    modal.present();
  }


}
