import { Component } from '@angular/core';
import { NavController, NavParams, ViewController} from 'ionic-angular';

@Component({
  selector: 'page-modal-game',
  templateUrl: 'modal-game.html',
})
export class ModalGamePage {

  url: string;
  answ: string;
  description: string;

  constructor(public navCtrl: NavController, public navParams: NavParams, public view: ViewController) {
    console.log('ciao');
    this.url = this.navParams.get("url");
    this.answ = this.navParams.get("answ");
    this.description = this.navParams.get("description");
  }


  closeModal() {
    this.view.dismiss();
  }
}
