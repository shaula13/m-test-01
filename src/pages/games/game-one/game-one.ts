import {Component} from '@angular/core';
import {LoadingController, NavController, NavParams} from 'ionic-angular';
import {DatabaseProvider} from "../../../providers/database/database";
import {HomePage} from "../../home/home";
import {BaseComponent} from "../../BaseComponent";

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

  async questionSlider() {
    //console.log(this.listGO);
    //console.log(this.listGOC);
    //console.log(this.item);
    //console.log(this.index);
    //console.log(this.answers);
    //console.log(this.life);

    if (this.index + 1 <= this.listGO.length && this.life > 0) {
      this.answers = [];
      this.listGOC.splice(0,1);
      this.answTrue = this.listGOC[0].answ;
      this.item = this.listGOC[0];
      await this.getAnswer(this.item);
      await this.shuffleList(this.answers);
    } else {
      this.navigate();
      //console.log("fine " + this.index);
    }
    this.index++;
  }

  async verifyAnswer(answ) {
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
