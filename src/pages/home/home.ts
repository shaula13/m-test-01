import { Component } from '@angular/core';
import {LoadingController, NavController, NavParams} from 'ionic-angular';
import {BaseComponent} from "../BaseComponent";
import {DatabaseProvider} from "../../providers/database/database";

@Component({
  selector: 'page-home',
  templateUrl: 'home.html'
})
export class HomePage extends BaseComponent{

  constructor(protected navCtrl: NavController, protected navParams: NavParams, protected databaseprovider: DatabaseProvider,
                protected loadCtrl: LoadingController) {
    super(navCtrl, navParams, databaseprovider, loadCtrl);
  }

  onInit() {}
  loadData() {}


}
