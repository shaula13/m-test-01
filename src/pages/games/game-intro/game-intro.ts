import { Component } from '@angular/core';
import {LoadingController, NavController, NavParams} from 'ionic-angular';
import {DatabaseProvider} from "../../../providers/database/database";
import {BaseComponent} from "../../BaseComponent";
import {GameOnePage} from "../game-one/game-one";
import {GameTwoPage} from "../game-two/game-two";
import {GameThreePage} from "../game-three/game-three";

@Component({
  selector: 'page-game-intro',
  templateUrl: 'game-intro.html',
})
export class GameIntroPage extends BaseComponent {

  public firstParam;
  public secondParam;
  public thirdParam;
  games = [];
  game = {};
  record = {};

  constructor(protected navCtrl: NavController, protected navParams: NavParams, protected databaseprovider: DatabaseProvider,
              protected loadCtrl: LoadingController) {
    super(navCtrl, navParams, databaseprovider, loadCtrl);
  }

  onInit() {
    this.firstParam = this.navParams.get("firstPassed");
    this.secondParam = this.navParams.get("secondPassed");
    this.thirdParam = this.navParams.get("thirdPassed");
  }

  async loadData() {
    //this.spinnerShow(1000);
    await this.loadGameData().then(data => this.games = data);
    await this.getGamePage();
  }

  async loadGameData(): Promise<any[]> {
    return await this.databaseprovider.getAllGame();
  }

  async updateRecord(id) {
    if (this.thirdParam) {
      if (this.record < this.secondParam) {
        await this.databaseprovider.updateRecord(this.secondParam, id);
        await this.loadData();
      }
    }
  }

  async getGamePage() {
    this.record = this.games[this.firstParam].record;
    await this.updateRecord(this.firstParam);
    this.game = this.games[this.firstParam];
  }

  navigate() {
    switch (this.firstParam) {
      case 0:
        this.navCtrl.push(GameOnePage);
        break;
      case 1:
        this.navCtrl.push(GameTwoPage);
        break;
      case 2:
        this.navCtrl.push(GameThreePage);
        break;
    }
  }

}
