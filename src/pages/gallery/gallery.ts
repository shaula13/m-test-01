import { DatabaseProvider } from './../../providers/database/database';
import { Component } from '@angular/core';
import { NavController } from 'ionic-angular';

@Component({
  selector: 'page-gallery',
  templateUrl: 'gallery.html',
})
export class GalleryPage {

  // image = {};
  images = [];
 
  constructor(public navCtrl: NavController, private databaseprovider: DatabaseProvider) {
    this.databaseprovider.getDatabaseState().subscribe(rdy => {
      if (rdy) {
        this.loadImageData();
      }
    });
  }
 
  loadImageData() {
    this.databaseprovider.getUnlockedImages().then(data => {
      this.images = data;
    })
  }
 
  // updateImage() {
  //   this.databaseprovider.updateImage(parseInt(this.image['locked']), parseInt(this.image['id']))
  //   .then(data => {
  //     this.loadImageData();
  //   });
  //   this.image = {};
  // }

}
