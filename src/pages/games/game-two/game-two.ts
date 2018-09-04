import { Component } from '@angular/core';
import {Events, LoadingController, ModalController, NavController, NavParams, ToastController} from 'ionic-angular';
import {DatabaseProvider} from "../../../providers/database/database";
import {BaseComponent} from "../../BaseComponent";
import {ModalGamePage} from "../modal-game/modal-game";

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
  help = 1;
  answTrue: string;
  answersTrue: number = 0;

  isTrue1 = 0;
  isTrue2 = 0;

  games = [];

  constructor(protected navCtrl: NavController, protected navParams: NavParams, protected databaseprovider: DatabaseProvider,
              protected loadCtrl: LoadingController, public events: Events, private modalCtrl: ModalController, public toastCtrl: ToastController) {
    super(navCtrl, navParams, databaseprovider, loadCtrl);
  }

  onInit() {}

  async loadData() {
    //this.spinnerShow(1000);
    await this.loadGameData().then(data => this.games = data);
    await this.loadGTData().then(data => this.listGT = data);
    this.listGT.forEach(e => this.listGTC.push(e));
    await this.shuffleList(this.listGTC);
    this.item = this.listGTC[0];
    this.answTrue = this.listGTC[0].answ;
  }

  async loadGameData(): Promise<any[]> {
    return await this.databaseprovider.getAllGame();
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

  getRewards() {
    switch (this.answersTrue) {
      case 3:
        this.databaseprovider.updateImage(0, 7);
        this.presentToast();
        break;
      case 6:
        this.databaseprovider.updateImage(0, 8);
        this.presentToast();
        break;
      case 9:
        this.databaseprovider.updateImage(0, 9);
        this.presentToast();
        break;
    }
  }

  presentToast() {
    const toast = this.toastCtrl.create({
      message: 'Disponibile nuova immagine',
      duration: 1000
    });
    toast.present();
  }

  async updateRecord() {
    let record = this.games[1].record;
    if (record < this.answersTrue) {
      this.databaseprovider.updateRecord(this.answersTrue, 2);
    }
  }

  async updateLastPlay() {
    this.databaseprovider.updateLastPlay(this.answersTrue, 2);
  }

  async gameTwo(answ, row) {
    let record = this.games[1].record;

    if (answ != this.answTrue) {
      await this.checkRow('red', row);
      this.life = this.life - 1;
    } else {
      await this.checkRow('green', row);
      this.answersTrue = this.answersTrue + 1;

      if (record < this.answersTrue) {
        this.getRewards();
      }
    }

    let timeout = setTimeout( () => {
      if (this.index + 1 <= this.listGT.length && this.life > 0) {
        this.checkRow('', row);
        this.listGTC.splice(0,1);
        this.answTrue = this.listGTC[0].answ;
        this.item = this.listGTC[0];
      } else {
        this.updateRecord();
        this.updateLastPlay();
        this.publishEvent();
      }
      this.index++;

    }, 1500);
  }

  publishEvent() {
    this.events.publish('reloadGameIntro');
    this.navCtrl.pop();
  }

  openModal() {
    const modal = this.modalCtrl.create(ModalGamePage, {
      url: this.listGTC[0].url2,
      answ: this.listGTC[0].answ,
      description: this.listGTC[0].description
    }, {
      enableBackdropDismiss: false,
    });

    if (this.help > 0) {
      modal.present();
      this.help = this.help -1;
    }
  }

}
