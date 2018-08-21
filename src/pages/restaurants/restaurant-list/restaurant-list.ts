import { Component } from '@angular/core';
import { NavController, NavParams } from 'ionic-angular';
import { RestaurantModalPage } from '../restaurant-modal/restaurant-modal';
import { DatabaseProvider } from '../../../providers/database/database';

@Component({
  selector: 'page-restaurant-list',
  templateUrl: 'restaurant-list.html',
})
export class RestaurantListPage {

  restaurant = {};
  restaurants = [];
  isLocal = true;
  isFood = false;

  bars = [];
  locals = [];
  nigths = [];
  firsts = [];
  seconds = [];
  desserts = [];

  constructor(public navCtrl: NavController, public navParams: NavParams, private databaseprovider: DatabaseProvider) {
    this.databaseprovider.getDatabaseState().subscribe(rdy => {
      if (rdy) {
        // this.loadRestaurantData();
        this.loadRestaurantsForCategoryData('Bar').then(result => this.bars = result);
        this.loadRestaurantsForCategoryData('Locali').then(result => this.locals = result);
        this.loadRestaurantsForCategoryData('Ristoranti').then(result => this.nigths = result);
        this.loadFoodsForCategoryData('Primo').then(result => this.firsts = result);
        this.loadFoodsForCategoryData('Secondo').then(result => this.seconds = result);
        this.loadFoodsForCategoryData('Dolce').then(result => this.desserts = result);
      }
    });
  }

  // loadRestaurantData() {
  //   this.databaseprovider.getAllRestaurants().then(data => {
  //     this.restaurants = data;
  //   });
  // }
 
  loadRestaurantsForCategoryData(category): Promise<any[]> {
    return this.databaseprovider.getRestaurantsForCategory(category);
  }
  
  loadFoodsForCategoryData(category): Promise<any[]> {
    return this.databaseprovider.getFoodsForCategory(category);
  }

  navigate(id) {
    this.navCtrl.push(RestaurantModalPage, {
      firstPassed: id,
      secondPassed: this.isLocal
    });
  }

  isLocalOnClick() {
    this.isLocal = true;
    this.isFood = false;
  }

  isFoodOnClick() {
    this.isFood = true;
    this.isLocal = false;
  }

}
