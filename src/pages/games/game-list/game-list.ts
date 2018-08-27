import { Component } from '@angular/core';
import { NavController, NavParams } from 'ionic-angular';
import {GameIntroPage} from "../game-intro/game-intro";

@Component({
  selector: 'page-game-list',
  templateUrl: 'game-list.html',
})
export class GameListPage {

  constructor(public navCtrl: NavController, public navParams: NavParams) {
  }

  navigate(game) {
    this.navCtrl.push(GameIntroPage, {
      firstPassed: game,
      thirdPassed: false
    });
  }
}
