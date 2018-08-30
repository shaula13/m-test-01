import { Injectable } from '@angular/core';
import { Platform } from 'ionic-angular';
import { SQLite, SQLiteObject } from '@ionic-native/sqlite';
import { SQLitePorter } from '@ionic-native/sqlite-porter';
import { Http } from '@angular/http';
import 'rxjs/add/operator/map';
import { BehaviorSubject } from 'rxjs/Rx';
import { Storage } from '@ionic/storage';

@Injectable()
export class DatabaseProvider {
  database: SQLiteObject;
  private databaseReady: BehaviorSubject<boolean>;

  constructor(public sqlitePorter: SQLitePorter, private storage: Storage, private sqlite: SQLite, private platform: Platform, private http: Http) {
    this.databaseReady = new BehaviorSubject(false);
    this.platform.ready().then(() => {
      this.sqlite.create({
        name: 'myData.db',
        location: 'default'
      })
        .then((db: SQLiteObject) => {
          this.database = db;
          this.storage.get('database_filled').then(val => {
            if (val) {
              this.databaseReady.next(true);
            } else {
              this.fillDatabase();
            }
          });
        });
    });
  }

//General custom

  fillDatabase() {
    this.http.get('assets/dummyDump.sql')
      .map(res => res.text())
      .subscribe(sql => {
        this.sqlitePorter.importSqlToDb(this.database, sql)
          .then(data => {
            this.databaseReady.next(true);
            this.storage.set('database_filled', true);
          })
          .catch(e => console.error(e));
      });
  }

  getDatabaseState() {
    return this.databaseReady.asObservable();
  }

  private transformDataToArray(data): any[] {
    let array = [];
    for (var i = 0; i < data.rows.length; i++) {
      array.push(data.rows.item(i));
    }
    return array;
  }

//Gallery

  getAllImages() {
    return this.database.executeSql("SELECT * FROM image", []).then((data) => {
      return this.transformDataToArray(data);
    }, err => {
      console.log('Error: ', err);
      return [];
    });
  }

  getUnlockedImages() {
    return this.database.executeSql("SELECT * FROM image WHERE locked='0'", []).then((data) => {
      return this.transformDataToArray(data);
    }, err => {
      console.log('Error: ', err);
      return [];
    });
  }

  updateImage(locked, id) {
    let data = [locked, id];
    return this.database.executeSql("UPDATE image SET locked=? where id=?", data).then(data => {
      return data;
    }, err => {
      console.log('Error: ', err);
      return err;
    });
  }

//Restaurant&Food

  getAllRestaurants() {
    return this.database.executeSql("SELECT * FROM restaurant", []).then((data) => {
      return this.transformDataToArray(data);
    }, err => {
      console.log('Error: ', err);
      return [];
    });
  }

  getAllFoods() {
    return this.database.executeSql("SELECT * FROM food", []).then((data) => {
      return this.transformDataToArray(data);
    }, err => {
      console.log('Error: ', err);
      return [];
    });
  }

  getRestaurantsForCategory(category) {
    let data = [category];
    return this.database.executeSql("SELECT * FROM restaurant WHERE category=?", data).then((data) => {
      return this.transformDataToArray(data);
    }, err => {
      console.log('Error: ', err);
      return [];
    });
  }

  getFoodsForCategory(category) {
    let data = [category];
    return this.database.executeSql("SELECT * FROM food WHERE category=?", data).then((data) => {
      return this.transformDataToArray(data);
    }, err => {
      console.log('Error: ', err);
      return [];
    });
  }

  getRestaurantForId(id) {
    let data = [id];
    return this.database.executeSql("SELECT * FROM restaurant WHERE id=?", data).then((data) => {
      return  data.rows.item(0);
    }, err => {
      console.log('Error: ', err);
      return [];
    });
  }

  getFoodForId(id) {
    let data = [id];
    return this.database.executeSql("SELECT * FROM food WHERE id=?", data).then((data) => {
      return  data.rows.item(0);
    }, err => {
      console.log('Error: ', err);
      return [];
    });
  }

//Itinerary&Place

  getItireries() {
    return this.database.executeSql("SELECT * FROM itinerary", []).then((data) => {
      return this.transformDataToArray(data);
    }, err => {
      console.log('Error: ', err);
      return [];
    });
  }

  getPlaces() {
    return this.database.executeSql("SELECT * FROM place", []).then((data) => {
      return this.transformDataToArray(data);
    }, err => {
      console.log('Error: ', err);
      return [];
    });
  }

  getItineraryForId(id) {
    let data = [id];
    return this.database.executeSql("SELECT * FROM itinerary WHERE id=?", data).then((data) => {
      return  data.rows.item(0);
    }, err => {
      console.log('Error: ', err);
      return [];
    });
  }

  getPlaceForId(id) {
    let data = [id];
    return this.database.executeSql("SELECT * FROM place WHERE id=?", data).then((data) => {
      return  data.rows.item(0);
    }, err => {
      console.log('Error: ', err);
      return [];
    });
  }

  getItireriesPlace(id) {
    let data = [id];
    return this.database.executeSql("SELECT * FROM place JOIN intiraries_place ON intiraries_place.place_id = place.id WHERE intiraries_place.intirary_id=?", data).then((data) => {
      return this.transformDataToArray(data);
    }, err => {
      console.log('Error: ', err);
      return [];
    });
  }

//game

  getAllGame() {
    return this.database.executeSql("SELECT * FROM game", []).then((data) => {
      return this.transformDataToArray(data);
    }, err => {
      console.log('Error: ', err);
      return [];
    });
  }

  getGameForId(id) {
    let data = [id];
    return this.database.executeSql("SELECT * FROM game WHERE id=?", data).then((data) => {
      return  data.rows.item(0);
    }, err => {
      console.log('Error: ', err);
      return [];
    });
  }

  updateRecord(record, id) {
    let data = [record, id];
    return this.database.executeSql("UPDATE game SET record=? where id=?", data).then(data => {
      return data;
    }, err => {
      console.log('Error: ', err);
      return err;
    });
  }

  getRecordForId(id) {
    let data = [id];
    return this.database.executeSql("SELECT record FROM game WHERE id=?", data).then((data) => {
      return  data.rows.item(0);
    }, err => {
      console.log('Error: ', err);
      return [];
    });
  }

  //game-one

  getAllGameOne() {
    return this.database.executeSql("SELECT * FROM game_one", []).then((data) => {
      return this.transformDataToArray(data);
    }, err => {
      console.log('Error: ', err);
      return [];
    });
  }

  getItemToGOForId(id) {
    let data = [id];
    return this.database.executeSql("SELECT * FROM game_one WHERE id=?", data).then((data) => {
      return  data.rows.item(0);
    }, err => {
      console.log('Error: ', err);
      return [];
    });
  }

  //game-two

  getAllGameTwo() {
    return this.database.executeSql("SELECT * FROM game_two", []).then((data) => {
      return this.transformDataToArray(data);
    }, err => {
      console.log('Error: ', err);
      return [];
    });
  }

 //SpecialDay

  getAllSteps() {
    return this.database.executeSql("SELECT * FROM special_day", []).then((data) => {
      return this.transformDataToArray(data);
    }, err => {
      console.log('Error: ', err);
      return [];
    });
  }

  getStepForId(id) {
    let data = [id];
    return this.database.executeSql("SELECT * FROM special_day WHERE id=?", data).then((data) => {
      return  data.rows.item(0);
    }, err => {
      console.log('Error: ', err);
      return [];
    });
  }

  getUnlockedSteps() {
    return this.database.executeSql("SELECT * FROM special_day WHERE locked='0'", []).then((data) => {
      return this.transformDataToArray(data);
    }, err => {
      console.log('Error: ', err);
      return [];
    });
  }

  updateStep(id) {
    let data = [id];
    return this.database.executeSql("UPDATE special_day SET locked='0' where id=?", data).then(data => {
      return data;
    }, err => {
      console.log('Error: ', err);
      return err;
    });
  }
  resetSteps() {
    return this.database.executeSql("UPDATE special_day SET locked='1'", []).then(data => {
      return data;
    }, err => {
      console.log('Error: ', err);
      return err;
    });
  }

  updateAllSteps() {
    return this.database.executeSql("UPDATE special_day SET locked='0'", []).then(data => {
      return data;
    }, err => {
      console.log('Error: ', err);
      return err;
    });
  }



}
