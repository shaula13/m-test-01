import { DatabaseProvider } from './../../providers/database/database';
import { Component } from '@angular/core';
import { LoadingController, NavController, NavParams } from 'ionic-angular';
import { DomSanitizer } from "@angular/platform-browser";
import { BaseComponent } from "../BaseComponent";

@Component({
  selector: 'page-gallery',
  templateUrl: 'gallery.html',
})
export class GalleryPage extends BaseComponent{

  // image = {};
  images = [];

  constructor(protected navCtrl: NavController, protected navParams: NavParams, protected databaseprovider: DatabaseProvider,
              protected loadCtrl: LoadingController, public sanitizer: DomSanitizer) {
    super(navCtrl, navParams, databaseprovider, loadCtrl);
  }

  onInit() {}

  async loadData() {
    this.spinnerShow(1000);
    await this.loadImageData().then(data => { this.images = data; });
  }

  async loadImageData(): Promise<any[]> {
    return await this.databaseprovider.getUnlockedImages();
  }

  // updateImage() {
  //   this.databaseprovider.updateImage(parseInt(this.image['locked']), parseInt(this.image['id']))
  //   .then(data => {
  //     this.loadImageData();
  //   });
  //   this.image = {};
  // }

}
