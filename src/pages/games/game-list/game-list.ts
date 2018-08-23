import { Component } from '@angular/core';
import { NavController, NavParams } from 'ionic-angular';
import { GameOnePage } from '../game-one/game-one';
import { GameTwoPage } from '../game-two/game-two';
import { GameThreePage } from '../game-three/game-three';

@Component({
  selector: 'page-game-list',
  templateUrl: 'game-list.html',
})
export class GameListPage {

  constructor(public navCtrl: NavController, public navParams: NavParams) {
  }

  toGameOne() {
    this.navCtrl.push(GameOnePage);
  }
  toGameTwo() {
    this.navCtrl.push(GameTwoPage);
  }
  toGameThree() {
    this.navCtrl.push(GameThreePage);
  }
}
