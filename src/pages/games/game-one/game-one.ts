import {Component} from '@angular/core';
import {LoadingController, NavController, NavParams} from 'ionic-angular';
import {DatabaseProvider} from "../../../providers/database/database";
import {BaseComponent} from "../../BaseComponent";
import {GameIntroPage} from "../game-intro/game-intro";

@Component({
  selector: 'page-game-one',
  templateUrl: 'game-one.html',
})
export class GameOnePage extends BaseComponent {

  listGO = [];
  listGOC = [];
  answers = [];
  item = {};
  index = 1;
  life = 3;
  answTrue: string;
  answersTrue: number = 0;

  aw1: string;
  aw2: string;
  aw3: string;
  aw4: string;

  isTrue1 = 0;
  isTrue2 = 0;
  isTrue3 = 0;
  isTrue4 = 0;

  constructor(protected navCtrl: NavController, protected navParams: NavParams, protected databaseprovider: DatabaseProvider,
                protected loadCtrl: LoadingController) {
    super(navCtrl, navParams, databaseprovider, loadCtrl);
  }

  onInit() {}

  async loadData() {
    //this.spinnerShow(1000);
    await this.loadGOData().then(data => this.listGO = data);
    this.listGO.forEach(e => this.listGOC.push(e));
    await this.shuffleList(this.listGOC);
    this.item = this.listGOC[0];
    await this.getAnswer(this.item);
    await this.shuffleList(this.answers);
    await this.getAnswer2();
    this.answTrue = this.listGOC[0].answ;
  }

  async loadGOData(): Promise<any[]> {
    return await this.databaseprovider.getAllGameOne();
  }

  async shuffleList(array) {
    for (let i = array.length - 1; i > 0; i--) {
      const j = Math.floor(Math.random() * (i + 1));
      [array[i], array[j]] = [array[j], array[i]];
    }
  }

  async getAnswer(element) {
    this.answers.push(element.answ);
    this.answers.push(element.answ1);
    this.answers.push(element.answ2);
    this.answers.push(element.answ3);
  }

  async getAnswer2() {
    this.aw1 = this.answers[0];
    this.aw2 = this.answers[1];
    this.aw3 = this.answers[2];
    this.aw4 = this.answers[3];
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
      case 3:
        if (aClass == "green") {
          this.isTrue3 = 1;
        }else if (aClass == "red") {
          this.isTrue3 = 2;
        } else {
          this.isTrue3 = 0;
        }
        break;
      case 4:
        if (aClass == "green") {
          this.isTrue4 = 1;
        } else if (aClass == "red") {
          this.isTrue4 = 2;
        } else {
          this.isTrue4 = 0;
        }
        break;
      default:
        this.isTrue1 = 0;
        this.isTrue2 = 0;
        this.isTrue3 = 0;
        this.isTrue4 = 0;
    }
  }

  async gameOne(answ, row) {

    if (answ != this.answTrue) {
      await this.checkRow('red', row);
      this.life = this.life - 1;
    } else {
      await this.checkRow('green', row);
      this.answersTrue = this.answersTrue + 1;
    }

    let timeout = setTimeout( () => {
      if (this.index + 1 <= this.listGO.length && this.life > 0) {
        this.checkRow('', row);
        this.answers = [];
        this.listGOC.splice(0,1);
        this.answTrue = this.listGOC[0].answ;
        this.item = this.listGOC[0];
        this.getAnswer(this.item);
        this.shuffleList(this.answers);
        this.getAnswer2();
      } else {
        this.navigate();
      }
      this.index++;

    }, 1500);
  }

  navigate() {
    this.navCtrl.push(GameIntroPage, {
      firstPassed: 1,
      secondPassed: this.answersTrue,
      thirdPassed: true
    });
  }
}
