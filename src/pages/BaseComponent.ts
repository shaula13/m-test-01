import { OnInit } from '@angular/core';
import {LoadingController, NavController, NavParams} from 'ionic-angular';
import { DatabaseProvider } from '../providers/database/database';

export abstract class BaseComponent implements OnInit {

  constructor(protected navCtrl: NavController, protected navParams: NavParams, protected databaseprovider: DatabaseProvider, protected loadCtrl: LoadingController) { }

  ngOnInit() {
    this.onInit();
    this.databaseprovider.getDatabaseState().subscribe(rdy => {
        if (rdy) {
            this.loadData();
        }
    });
  }

  protected abstract onInit();
  protected abstract loadData();

  load(event, www): void {
    event.preventDefault();
    window.open(www, '_system', 'location=yes');
  }

  spinnerShow(time) {
    let loader = this.loadCtrl.create({
      spinner: "bubbles",
      content: "Caricamento",
      cssClass: 'fontT',
      duration: time
    });
    loader.present();
  }

}
