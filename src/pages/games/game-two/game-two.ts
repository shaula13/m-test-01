import { Component } from '@angular/core';
import {LoadingController, NavController, NavParams} from 'ionic-angular';
import {DatabaseProvider} from "../../../providers/database/database";
import {HomePage} from "../../home/home";
import {BaseComponent} from "../../BaseComponent";

@Component({
  selector: 'page-game-two',
  templateUrl: 'game-two.html',
})
export class GameTwoPage extends BaseComponent {

  listGT = [];
  listGTC = [];
  item = {};
  index = 1;
  life = 3;
  answTrue: string;
  answersTrue: number = 0;

  constructor(protected navCtrl: NavController, protected navParams: NavParams, protected databaseprovider: DatabaseProvider,
              protected loadCtrl: LoadingController) {
    super(navCtrl, navParams, databaseprovider, loadCtrl);
  }

  onInit() {}

  async loadData() {
    //this.spinnerShow(1000);
    await this.loadGTData().then(data => this.listGT = data);
    this.listGT.forEach(e => this.listGTC.push(e));
    await this.shuffleList(this.listGTC);
    this.item = this.listGTC[0];
    this.answTrue = this.listGTC[0].answ;
  }

  async loadGTData(): Promise<any[]> {
    return await this.databaseprovider.getAllGameTwo();
  }

  async shuffleList(array) {
    for (let i = array.length - 1; i > 0; i--) {
      const j = Math.floor(Math.random() * (i + 1));
      [array[i], array[j]] = [array[j], array[i]];
    }
  }

  async questionSlider() {

    //console.log(this.listGT);
    //console.log(this.listGTC);
    console.log(this.item);
    //console.log(this.index);
    //console.log(this.life);

      if (this.index + 1 <= this.listGT.length && this.life > 0) {
        this.listGTC.splice(0,1);
        this.answTrue = this.listGTC[0].answ;
        this.item = this.listGTC[0];
      } else {
        this.navigate();
        console.log("fine " + this.index);
      }
      this.index++;
  }

  async verifyAnswer(answ) {
    console.log(answ);
    console.log(this.answTrue);
    if (answ != this.answTrue) {
      this.life = this.life - 1;
    } else {
      this.answersTrue = this.answersTrue + 1;
    }
  }

  navigate() {
    this.navCtrl.push(HomePage);
  }
}
