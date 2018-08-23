import { Component } from '@angular/core';
import { LoadingController, NavController, NavParams } from 'ionic-angular';
import { RestaurantModalPage } from '../restaurant-modal/restaurant-modal';
import { DatabaseProvider } from '../../../providers/database/database';
import { DomSanitizer } from "@angular/platform-browser";
import { BaseComponent } from "../../BaseComponent";

@Component({
  selector: 'page-restaurant-list',
  templateUrl: 'restaurant-list.html',
})
export class RestaurantListPage extends BaseComponent {

  restaurant = {};
  //restaurants = [];
  isLocal = true;
  isFood = false;

  bars = [];
  locals = [];
  nigths = [];
  firsts = [];
  seconds = [];
  desserts = [];

  imagesFood = [];
  imagesRestaurant = [];

  constructor(protected navCtrl: NavController, protected navParams: NavParams, protected databaseprovider: DatabaseProvider,
              protected loadCtrl: LoadingController, public sanitizer: DomSanitizer) {
    super(navCtrl, navParams, databaseprovider, loadCtrl);
  }

  onInit() {}

  async loadData() {
    //this.spinnerShow(1000);
    // this.loadRestaurantData();
    await this.loadRestaurantsForCategoryData('Bar').then(data => this.bars = data);
    await this.loadRestaurantsForCategoryData('Locali').then(data => this.locals = data);
    await this.loadRestaurantsForCategoryData('Ristoranti').then(data => this.nigths = data);
    await this.loadFoodsForCategoryData('Primo').then(data => this.firsts = data);
    await this.loadFoodsForCategoryData('Secondo').then(data => this.seconds = data);
    await this.loadFoodsForCategoryData('Dolce').then(data => this.desserts = data);

    await this.loadImagesFood().then(data => this.imagesFood = data);
    await this.loadImagesRestaurant().then(data => this.imagesRestaurant = data);
  }

  // loadRestaurantData() {
  //   this.databaseprovider.getAllRestaurants().then(data => {
  //     this.restaurants = data;
  //   });
  // }

  async loadRestaurantsForCategoryData(category): Promise<any[]> {
    return await this.databaseprovider.getRestaurantsForCategory(category);
  }

  async loadFoodsForCategoryData(category): Promise<any[]> {
    return await this.databaseprovider.getFoodsForCategory(category);
  }

  async loadImagesFood(): Promise<any[]> {
    return await this.databaseprovider.getAllFoods();
  }

  async loadImagesRestaurant(): Promise<any[]> {
    return await this.databaseprovider.getAllRestaurants();
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
