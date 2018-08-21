import { Component } from '@angular/core';
import { NavController, NavParams } from 'ionic-angular';
import { GameOnePage } from '../game-one/game-one';
import { GameTwoPage } from '../game-two/game-two';
import { GameThreePage } from '../game-three/game-three';

/**
 * Generated class for the GameListPage page.
 *
 * See https://ionicframework.com/docs/components/#navigation for more info on
 * Ionic pages and navigation.
 */

@Component({
  selector: 'page-game-list',
  templateUrl: 'game-list.html',
})
export class GameListPage {

  constructor(public navCtrl: NavController, public navParams: NavParams) {
  }

  ionViewDidLoad() {
    console.log('ionViewDidLoad GameListPage');
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
