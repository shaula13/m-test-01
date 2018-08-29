import { Component } from '@angular/core';
import {Events, LoadingController, NavController, NavParams} from 'ionic-angular';
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
  games = [];
  game = {};

  constructor(protected navCtrl: NavController, protected navParams: NavParams, protected databaseprovider: DatabaseProvider,
              protected loadCtrl: LoadingController, public events: Events) {
    super(navCtrl, navParams, databaseprovider, loadCtrl);

    this.listenEvents();
  }

  onInit() {
    this.firstParam = this.navParams.get("firstPassed");
  }

  async loadData() {
    //this.spinnerShow(1000);
    await this.loadGameData().then(data => this.games = data);
    this.game = this.games[this.firstParam];
  }

  async loadGameData(): Promise<any[]> {
    return await this.databaseprovider.getAllGame();
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

  listenEvents(){
    this.events.subscribe('reloadGameIntro',() => {
      this.loadData();
    });
  }
}
