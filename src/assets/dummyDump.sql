
CREATE TABLE IF NOT EXISTS image(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    url TEXT,
    locked INTEGER
);
INSERT INTO image(url ,locked) VALUES
('photo1.jpg', '0'), ('photo2.jpg', '1'), ('photo3.jpg', '1'), ('photo1.jpg', '1'),
('photo2.jpg', '0'), ('photo3.jpg', '1'), ('photo1.jpg', '1'), ('photo2.jpg', '1'),
('photo3.jpg', '0'), ('photo1.jpg', '0'), ('photo2.jpg', '0'), ('photo3.jpg', '0'),
('photo1.jpg', '0'), ('photo2.jpg', '1'), ('photo3.jpg', '1'), ('photo1.jpg', '1'),
('photo2.jpg', '0'), ('photo3.jpg', '1'), ('photo1.jpg', '1'), ('photo2.jpg', '1'),
('photo3.jpg', '0'), ('photo1.jpg', '0'), ('photo2.jpg', '0'), ('photo3.jpg', '0');


CREATE TABLE IF NOT EXISTS restaurant(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    url TEXT,
    category TEXT,
    description TEXT,
    www TEXT,
    wwwT TEXT
);
INSERT INTO restaurant(name ,url, category, description, www, wwwT) VALUES
('Ristorante1', 'restaurant/restaurant1.jpg', 'Bar', 'lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum', 'https://kenshorestaurant.com','https://www.tripadvisor.it/Restaurant_Review-g187855-d7755768-Reviews-Kensho-Turin_Province_of_Turin_Piedmont.html'),
('Ristorante2', 'restaurant/restaurant2.jpg', 'Locali', 'lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum', 'https://kenshorestaurant.com','https://www.tripadvisor.it/Restaurant_Review-g187855-d7755768-Reviews-Kensho-Turin_Province_of_Turin_Piedmont.html'),
('Ristorante3', 'restaurant/restaurant3.jpg', 'Ristoranti', 'lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum', 'https://kenshorestaurant.com','https://www.tripadvisor.it/Restaurant_Review-g187855-d7755768-Reviews-Kensho-Turin_Province_of_Turin_Piedmont.html'),
('Ristorante1', 'restaurant/restaurant1.jpg', 'Bar', 'lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum', 'https://kenshorestaurant.com','https://www.tripadvisor.it/Restaurant_Review-g187855-d7755768-Reviews-Kensho-Turin_Province_of_Turin_Piedmont.html'),
('Ristorante2', 'restaurant/restaurant2.jpg', 'Locali', 'lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum', 'https://kenshorestaurant.com','https://www.tripadvisor.it/Restaurant_Review-g187855-d7755768-Reviews-Kensho-Turin_Province_of_Turin_Piedmont.html'),
('Ristorante3', 'restaurant/restaurant3.jpg', 'Ristoranti', 'lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum', 'https://kenshorestaurant.com','https://www.tripadvisor.it/Restaurant_Review-g187855-d7755768-Reviews-Kensho-Turin_Province_of_Turin_Piedmont.html');


CREATE TABLE IF NOT EXISTS food(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    url TEXT,
    category TEXT,
    description TEXT
);
INSERT INTO food(name ,url, category, description) VALUES
('Food1', 'food/food1.jpg', 'Primo', 'lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum'),
('Food2', 'food/food2.jpg', 'Secondo', 'lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum'),
('Food3', 'food/food3.jpg', 'Dolce', 'lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum'),
('Food1', 'food/food1.jpg', 'Primo', 'lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum'),
('Food2', 'food/food2.jpg', 'Secondo', 'lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum'),
('Food3', 'food/food3.jpg', 'Dolce', 'lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum');


CREATE TABLE IF NOT EXISTS itinerary(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    url TEXT,
    description TEXT,
    time TEXT,
    distance TEXT,
    www TEXT
);
INSERT INTO itinerary(name ,url, description, time, distance, www) VALUES
('Itinerario1', 'https://www.google.com/maps/embed?pb=!1m28!1m12!1m3!1d1408.8900260266505!2d7.677198708144566!3d45.06997268906614!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m13!3e6!4m5!1s0x47886d6d42be9a1f%3A0x8ea306681d25ab76!2sPiazza+Solferino%2C+10121+Torino+TO!3m2!1d45.0690615!2d7.6768027!4m5!1s0x47886d72386ad075%3A0x4d1acc0b146d0ab1!2sKensho%2C+Via+Mercanti%2C+16%2C+10122+Torino+TO!3m2!1d45.0708801!2d7.6803821999999995!5e0!3m2!1sit!2sit!4v1533717481937',
 'lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum', '4h 22m', '2,6km',
 'https://www.google.it/maps/dir/Piazza+Solferino,+10121+Torino+TO/Kensho,+Via+Mercanti,+16,+10122+Torino+TO/@45.0699727,7.6771987,18z/data=!3m1!4b1!4m13!4m12!1m5!1m1!1s0x47886d6d42be9a1f:0x8ea306681d25ab76!2m2!1d7.6768027!2d45.0690615!1m5!1m1!1s0x47886d72386ad075:0x4d1acc0b146d0ab1!2m2!1d7.6803822!2d45.0708801?hl=it'),
('Itinerario2', 'https://www.google.com/maps/embed?pb=!1m28!1m12!1m3!1d1408.8900260266505!2d7.677198708144566!3d45.06997268906614!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m13!3e6!4m5!1s0x47886d6d42be9a1f%3A0x8ea306681d25ab76!2sPiazza+Solferino%2C+10121+Torino+TO!3m2!1d45.0690615!2d7.6768027!4m5!1s0x47886d72386ad075%3A0x4d1acc0b146d0ab1!2sKensho%2C+Via+Mercanti%2C+16%2C+10122+Torino+TO!3m2!1d45.0708801!2d7.6803821999999995!5e0!3m2!1sit!2sit!4v1533717481937',
 'lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum', '4h 22m', '2,6km',
 'https://www.google.it/maps/dir/Piazza+Solferino,+10121+Torino+TO/Kensho,+Via+Mercanti,+16,+10122+Torino+TO/@45.0699727,7.6771987,18z/data=!3m1!4b1!4m13!4m12!1m5!1m1!1s0x47886d6d42be9a1f:0x8ea306681d25ab76!2m2!1d7.6768027!2d45.0690615!1m5!1m1!1s0x47886d72386ad075:0x4d1acc0b146d0ab1!2m2!1d7.6803822!2d45.0708801?hl=it'),
('Itinerario3', 'https://www.google.com/maps/embed?pb=!1m28!1m12!1m3!1d1408.8900260266505!2d7.677198708144566!3d45.06997268906614!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m13!3e6!4m5!1s0x47886d6d42be9a1f%3A0x8ea306681d25ab76!2sPiazza+Solferino%2C+10121+Torino+TO!3m2!1d45.0690615!2d7.6768027!4m5!1s0x47886d72386ad075%3A0x4d1acc0b146d0ab1!2sKensho%2C+Via+Mercanti%2C+16%2C+10122+Torino+TO!3m2!1d45.0708801!2d7.6803821999999995!5e0!3m2!1sit!2sit!4v1533717481937',
 'lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum', '4h 22m', '2,6km',
 'https://www.google.it/maps/dir/Piazza+Solferino,+10121+Torino+TO/Kensho,+Via+Mercanti,+16,+10122+Torino+TO/@45.0699727,7.6771987,18z/data=!3m1!4b1!4m13!4m12!1m5!1m1!1s0x47886d6d42be9a1f:0x8ea306681d25ab76!2m2!1d7.6768027!2d45.0690615!1m5!1m1!1s0x47886d72386ad075:0x4d1acc0b146d0ab1!2m2!1d7.6803822!2d45.0708801?hl=it');


CREATE TABLE IF NOT EXISTS place(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    url TEXT,
    description TEXT,
    www TEXT
);
INSERT INTO place(name ,url, description, www) VALUES
('Place1', 'place/place1.jpg', 'lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum', 'http://www.museocinema.it/it/museo-e-fondazione-ma-prolo/mole-antonelliana'),
('Place2', 'place/place2.jpg', 'lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum', 'http://www.museocinema.it/it/museo-e-fondazione-ma-prolo/mole-antonelliana'),
('Place3', 'place/place3.jpg', 'lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum', 'http://www.museocinema.it/it/museo-e-fondazione-ma-prolo/mole-antonelliana'),
('Place1', 'place/place1.jpg', 'lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum', 'http://www.museocinema.it/it/museo-e-fondazione-ma-prolo/mole-antonelliana'),
('Place2', 'place/place2.jpg', 'lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum', 'http://www.museocinema.it/it/museo-e-fondazione-ma-prolo/mole-antonelliana'),
('Place3', 'place/place3.jpg', 'lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum', 'http://www.museocinema.it/it/museo-e-fondazione-ma-prolo/mole-antonelliana');


CREATE TABLE IF NOT EXISTS intiraries_place(
    intirary_id INTEGER,
    place_id INTEGER
);
INSERT INTO intiraries_place(intirary_id ,place_id) VALUES
('1', '1'),
('2', '4'),
('3', '2'),
('1', '5'),
('2', '3'),
('3', '6');


CREATE TABLE IF NOT EXISTS game_one(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    url TEXT,
    url2 TEXT,
    quest TEXT,
    answ TEXT,
    answ1 TEXT,
    answ2 TEXT,
    answ3 TEXT,
    description TEXT
);
INSERT INTO game_one(url, url2, quest, answ, answ1, answ2, answ3, description) VALUES
('game-one/g_o1.jpg', 'game-one/g_o1.jpg', 'lorem ipum lorem ipum lorem ipum lorem ipum lorem ipum lorem ipum??1', 'answ', 'answ1', 'answ2', 'answ3', 'lorem ipum lorem ipum lorem ipum lorem ipum lorem ipum lorem ipum1'),
('game-one/g_o2.jpg', 'game-one/g_o2.jpg', 'lorem ipum lorem ipum lorem ipum lorem ipum lorem ipum lorem ipum??2', 'answ', 'answ1', 'answ2', 'answ3', 'lorem ipum lorem ipum lorem ipum lorem ipum lorem ipum lorem ipum2'),
('game-one/g_o3.jpg', 'game-one/g_o3.jpg', 'lorem ipum lorem ipum lorem ipum lorem ipum lorem ipum lorem ipum??3', 'answ', 'answ1', 'answ2', 'answ3', 'lorem ipum lorem ipum lorem ipum lorem ipum lorem ipum lorem ipum3'),
('game-one/g_o1.jpg', 'game-one/g_o1.jpg', 'lorem ipum lorem ipum lorem ipum lorem ipum lorem ipum lorem ipum??1', 'answ', 'answ1', 'answ2', 'answ3', 'lorem ipum lorem ipum lorem ipum lorem ipum lorem ipum lorem ipum1'),
('game-one/g_o2.jpg', 'game-one/g_o2.jpg', 'lorem ipum lorem ipum lorem ipum lorem ipum lorem ipum lorem ipum??2', 'answ', 'answ1', 'answ2', 'answ3', 'lorem ipum lorem ipum lorem ipum lorem ipum lorem ipum lorem ipum2'),
('game-one/g_o3.jpg', 'game-one/g_o3.jpg', 'lorem ipum lorem ipum lorem ipum lorem ipum lorem ipum lorem ipum??3', 'answ', 'answ1', 'answ2', 'answ3', 'lorem ipum lorem ipum lorem ipum lorem ipum lorem ipum lorem ipum3'),
('game-one/g_o1.jpg', 'game-one/g_o1.jpg', 'lorem ipum lorem ipum lorem ipum lorem ipum lorem ipum lorem ipum??1', 'answ', 'answ1', 'answ2', 'answ3', 'lorem ipum lorem ipum lorem ipum lorem ipum lorem ipum lorem ipum1'),
('game-one/g_o2.jpg', 'game-one/g_o2.jpg', 'lorem ipum lorem ipum lorem ipum lorem ipum lorem ipum lorem ipum??2', 'answ', 'answ1', 'answ2', 'answ3', 'lorem ipum lorem ipum lorem ipum lorem ipum lorem ipum lorem ipum2'),
('game-one/g_o3.jpg', 'game-one/g_o3.jpg', 'lorem ipum lorem ipum lorem ipum lorem ipum lorem ipum lorem ipum??3', 'answ', 'answ1', 'answ2', 'answ3', 'lorem ipum lorem ipum lorem ipum lorem ipum lorem ipum lorem ipum3');


CREATE TABLE IF NOT EXISTS game_two(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    url TEXT,
    url2 TEXT,
    quest TEXT,
    answ TEXT,
    description TEXT
);
INSERT INTO game_two(url, url2, quest, answ, description) VALUES
('game-one/g_o1.jpg', 'game-one/g_o1.jpg', 'lorem ipum lorem ipum lorem ipum lorem ipum lorem ipum lorem ipum??1', 'true', 'lorem ipum lorem ipum lorem ipum lorem ipum lorem ipum lorem ipum1'),
('game-one/g_o2.jpg', 'game-one/g_o2.jpg', 'lorem ipum lorem ipum lorem ipum lorem ipum lorem ipum lorem ipum??2', 'false', 'lorem ipum lorem ipum lorem ipum lorem ipum lorem ipum lorem ipum2'),
('game-one/g_o3.jpg', 'game-one/g_o3.jpg', 'lorem ipum lorem ipum lorem ipum lorem ipum lorem ipum lorem ipum??3', 'true', 'lorem ipum lorem ipum lorem ipum lorem ipum lorem ipum lorem ipum3'),
('game-one/g_o1.jpg', 'game-one/g_o1.jpg', 'lorem ipum lorem ipum lorem ipum lorem ipum lorem ipum lorem ipum??1', 'false', 'lorem ipum lorem ipum lorem ipum lorem ipum lorem ipum lorem ipum1'),
('game-one/g_o2.jpg', 'game-one/g_o2.jpg', 'lorem ipum lorem ipum lorem ipum lorem ipum lorem ipum lorem ipum??2', 'true', 'lorem ipum lorem ipum lorem ipum lorem ipum lorem ipum lorem ipum2'),
('game-one/g_o3.jpg', 'game-one/g_o3.jpg', 'lorem ipum lorem ipum lorem ipum lorem ipum lorem ipum lorem ipum??3', 'false', 'lorem ipum lorem ipum lorem ipum lorem ipum lorem ipum lorem ipum3'),
('game-one/g_o1.jpg', 'game-one/g_o1.jpg', 'lorem ipum lorem ipum lorem ipum lorem ipum lorem ipum lorem ipum??1', 'true', 'lorem ipum lorem ipum lorem ipum lorem ipum lorem ipum lorem ipum1'),
('game-one/g_o2.jpg', 'game-one/g_o2.jpg', 'lorem ipum lorem ipum lorem ipum lorem ipum lorem ipum lorem ipum??2', 'false', 'lorem ipum lorem ipum lorem ipum lorem ipum lorem ipum lorem ipum2'),
('game-one/g_o3.jpg', 'game-one/g_o3.jpg', 'lorem ipum lorem ipum lorem ipum lorem ipum lorem ipum lorem ipum??3', 'true', 'lorem ipum lorem ipum lorem ipum lorem ipum lorem ipum lorem ipum3');


CREATE TABLE IF NOT EXISTS game(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    title TEXT,
    description TEXT,
    record INTEGER,
    tot INTEGER
);
INSERT INTO game(title, description, record, tot) VALUES
('title1', 'lorem ipum lorem ipum lorem ipum lorem ipum lorem ipum lorem ipum1 1', '0', '100'),
('title2', 'lorem ipum lorem ipum lorem ipum lorem ipum lorem ipum lorem ipum1 2', '0', '100'),
('title3', 'lorem ipum lorem ipum lorem ipum lorem ipum lorem ipum lorem ipum1 3', '0', '100');


