import { OnInit } from '@angular/core';
import { NavController, NavParams } from 'ionic-angular';
import { DatabaseProvider } from '../providers/database/database';

export abstract class BaseComponent implements OnInit {

  constructor(protected navCtrl: NavController, protected navParams: NavParams, protected databaseprovider: DatabaseProvider) { }

  ngOnInit() {
    this.onInit();
    this.databaseprovider.getDatabaseState().subscribe(rdy => {
        if (rdy) {
            this.loadData();
        }
    });
  }

  protected abstract onInit(): void;
  protected abstract loadData(): void;

  load(event, www): void {
    event.preventDefault();
    window.open(www, '_system', 'location=yes');
  }

}
