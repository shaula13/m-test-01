import { Component } from '@angular/core';
import {LoadingController, NavController, NavParams} from 'ionic-angular';
import {DatabaseProvider} from "../../../providers/database/database";
import {BaseComponent} from "../../BaseComponent";
import {GameIntroPage} from "../game-intro/game-intro";

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

  isTrue1 = 0;
  isTrue2 = 0;

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

  async checkRow(aClass, row) {
    switch (row) {
      case 1:
        if (aClass == 'green') {
          this.isTrue1 = 1;
        }else if (aClass == "red") {
          this.isTrue1 = 2;
        } else {
          this.isTrue1 = 0;
        }
        break;
      case 2:
        if (aClass == "green") {
          this.isTrue2 = 1;
        }else if (aClass == "red") {
          this.isTrue2 = 2;
        } else {
          this.isTrue2 = 0;
        }
        break;
      default:
        this.isTrue1 = 0;
        this.isTrue2 = 0;
    }
  }

  async gameTwo(answ, row) {

    if (answ != this.answTrue) {
      await this.checkRow('red', row);
      this.life = this.life - 1;
    } else {
      await this.checkRow('green', row);
      this.answersTrue = this.answersTrue + 1;
    }

    let timeout = setTimeout( () => {
      if (this.index + 1 <= this.listGT.length && this.life > 0) {
        this.checkRow('', row);
        this.listGTC.splice(0,1);
        this.answTrue = this.listGTC[0].answ;
        this.item = this.listGTC[0];
      } else {
        this.navigate();
      }
      this.index++;

    }, 1500);
  }

  navigate() {
    this.navCtrl.push(GameIntroPage, {
      firstPassed: 2,
      secondPassed: this.answersTrue,
      thirdPassed: true
    });
  }
}
