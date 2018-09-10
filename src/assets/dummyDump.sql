
CREATE TABLE IF NOT EXISTS image(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    url TEXT,
    locked INTEGER
);
INSERT INTO image(url ,locked) VALUES
('photo1.jpg', '0'), ('photo2.jpg', '0'), ('photo3.jpg', '0'), ('photo1.jpg', '1'),
('photo2.jpg', '1'), ('photo3.jpg', '1'), ('photo1.jpg', '1'), ('photo2.jpg', '1'),
('photo3.jpg', '1'), ('photo1.jpg', '1'), ('photo2.jpg', '1'), ('photo3.jpg', '1'),
('photo1.jpg', '1'), ('photo2.jpg', '1'), ('photo3.jpg', '1'), ('photo1.jpg', '1'),
('photo2.jpg', '1'), ('photo3.jpg', '1'), ('photo1.jpg', '1'), ('photo2.jpg', '1'),
('photo3.jpg', '1'), ('photo1.jpg', '1'), ('photo2.jpg', '1'), ('photo3.jpg', '1');


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
('Foie gras', 'food/foie_gras.jpg', 'Antipasto', 'Il foie gras è uno degli alimenti più conosciuti della cucina francese. Si tratta di fegato (in francese foie) di oca o anatra ingrassato (gras). Il più pregiato tra i due è quello di fegato d’oca, che può arrivare a pesare fino a un chilo, mentre quello d’anatra è più piccolo (arriva massimo a 500 grammi) con più grasso e un gusto più definito. L’ideale è servirlo come antipasto, quando le papille gustative sono ancora libere da altri gusti. Per rispettare la tradizione francese portarlo in tavola tagliato in fette e accompagnato con delle fettine di pane, delle confetture di frutta o cipolle. Le ricette alternative prevedono di saltarlo in padella, utilizzarlo come farcia per l’arrosto, o servirlo in crosta.' ),
('Entrecote', 'food/entrecote.jpg', 'Secondo', 'L''entrecôte di manzo è uno dei piatti preferiti per gli amanti della carne di tutto il mondo. Dagli USA alla Germania, passando dalla Francia - terra natia di questo piatto - nessuno può resistere a una deliziosa bistecca ai ferri.'),
('Coq au vin', 'food/coq_au_vin.jpeg', 'Secondo', 'Il coq au vin (kɔk o vɛ̃), in lingua francese gallo al vino, è un piatto tradizionale francese. La Borgogna, l''Alsazia, la Champagne e l''Alvernia ne rivendicano la paternità.Tradizionalmente, si lasciava marinare nel vino rosso anche per 48 ore, dato che in passato si usavano soprattutto carni tenaci di galletto: secondo molte ricette moderne, si preferisce usare il vino direttamente al momento della cottura, sicché prima della cottura il pollo viene soltanto infarinato e rosolato. Si usa di preferenza un galletto tagliato in pezzi. La cottura è a stufato, con aggiunta di lardo, aglio, cipolle, funghi, cognac, carote, lauro e timo. Una leggenda riconduce la ricetta alla conquista della Gallia da parte di Giulio Cesare. Un capotribù degli Arverni, assediato dai Romani, avrebbe fatto pervenire all''imperatore un galletto come simbolo del valore dei Galli. Cesare ricambiò la cortesia e i due sedettero insieme ad una cena dove fu servito il coq au vin. È ricordato nei libri del Commissario Maigret come uno dei piatti preferiti dal protagonista.' ),
('Soup a l’oignon', 'food/soupe_oignon.jpg', 'Primo', 'La zuppa di cipolle è un piatto tradizionale di molti paesi, poiché è un piatto povero, fatto con delle semplici cipolle, economiche e reperibili tutto l’anno nel proprio orto. La zuppa più rinomata però, è senz’altro quella francese, la parigina “Soupe à l''oignon”, che si è trasformata in un piatto raffinato preparato nei migliori ristoranti francesi. L’antica tradizione voleva che si andasse a mangiare la zuppa di cipolle nei bistrot vicini alle Halles (i mercati generali), all’alba dopo una notte di baldoria, e ancora oggi, alcuni di questi locali, aperti tutta la notte, servono questa gustosissima zuppa.' ),
('Omelette', 'food/omelette.jpg', 'Antipasto', 'L''omelette (termine francese, raramente adattato in omeletta) è un piatto a base di uova rapidamente cotte con burro e olio in una padella. È di uso comune piegare l''omelette intorno ad un ripieno che può essere composto da formaggio, erba cipollina, verdura o carne, soprattutto prosciutto. Spesso all''estero l''omelette viene confusa con la frittata. La differenza è che l''omelette viene cotta solo da una parte e poi viene ripiegata. Talvolta, per ottenere una consistenza soffice dell''omelette, vengono impiegati solo gli albumi delle uova, sbattuti con una piccola quantità di latte. In questo modo vengono rimossi il grasso e il colesterolo del tuorlo. L''omelette è un piatto nato in Francia nel XVI secolo, anche se le prime versioni sono risalenti al 1300.' ),
('Crépes', 'food/crépes.jpg', 'Dolce', 'La crespella, conosciuta anche con il termine francese di crêpe, è un tipo di cialda morbida, sottile e non croccante, cotta su una superficie rovente tonda.Le crespelle vengono farcite di ripieni vari, dolci o salati e arrotolate o impacchettate su se stesse per racchiuderli. L''impasto è a base di latte, uova, farina e burro. La crespella è generalmente considerata una pietanza tipica della cucina francese, tuttavia sono presenti preparazioni simili in vari paesi d''Europa. Il nome proviene dal termine latino crispus (arricciato, ondulato), o dal termine greco κρίσπος (krìspos "avvolto", "arrotolato"). Le crespelle condividono le origini di altre preparazioni a cialda e delle gaufre, ma l''attuale preparazione con la farina di frumento divenne comune solo nel IX secolo. Nel Medioevo erano preparate con acqua e vino al posto del latte Storia crepe o crespelle, su taccuinistorici.it. URL consultato il 21 maggio 2018.. In Francia sono un simbolo tradizionale di amicizia e alleanza e i mezzadri le offrivano ai loro padroni. Servite tradizionalmente in occasione della Candelora il 2 febbraio, si usava esprimere un desiderio quando si voltava la crêpe nella padella.' ),
('Escargot', 'food/escargot.jpg', 'Antipasto', 'Escargot in francese significa chiocciola (o nell’uso comune e in cucina) lumaca. Molti utilizzano questa parola in senso figurato nell’espressione”marcher o avancer comme un escargot” camminare come una lumaca. I Greci le apprezzavano molto, per mangiarle inventarono una speciale «forchetta», e gli attribuivano virtù afrodisiache! Anche i Romani le consideravano prelibate e le allevavano con alimenti come foglie di lauro, vino e crusca bolliti, servendole nei banchetti dell’impero perché ritenute cibo di moda. Nel Quattro e Cinquecento le chiocciole erano soprattutto un cibo popolare, consumate come “carne di magro”. Rimasero cibo “povero” fino al primo decennio dell’ottocento, quando in seguito a una carestia finirono per riconquistare un posto d’onore nell’alta cucina francese. Le chiocciole più prelibate sono quelle raccolte nei vigneti e lungo i sentieri di campagna, soprattutto a fine estate, inizio autunno, dopo le prime piogge!' ),
('Cuisses de grenouille', 'food/cuisses_de_grenouille.jpg', 'Antipasto', 'Il gambe rana sono utilizzati come ingrediente primario o secondario in preparazioni culinarie in diversi paesi in almeno tre continenti. In Europa , i francesi sono i maggiori consumatori, Francia delle importazioni tra il 3000 e 4000 tonnellate all''anno cosce. In Svizzera , secondo le statistiche doganali, tra il 1995 e il 2000 sono state importate non meno di 850 tonnellate di cosce. In Germania la domanda annuale è di circa 11 tonnellate. Come sottolinea Alexandre Dumas in Le grand dictionnaire de cuisine 2  : "Molti medici del Medioevo erano contrari a mangiare questa carne che è tuttavia bianca e delicata e contiene un principio gelatinoso più fluido e meno nutriente di quello altre carni Egli osserva, tuttavia, che "Nel sedicesimo secolo, le rane venivano servite ai migliori tavoli, e Champier si lamentava di questo gusto, che considerava strano, e circa un secolo fa un Auvergnat chiamato Simon fece una considerevole fortuna con le rane che gli furono mandate dal suo paese, che ingrassò, e che poi vendette alle prime case di Parigi, dove questo cibo era molto di moda. ". Possiamo quindi dedurre che questo piatto è stato consumato in Francia da allora. Dumas ci dice sempre che "In Italia e in Germania facciamo un grande consumo di questi anfibi e dei mercati sono coperti, e gli inglesi che lo odiano e che, senza dubbio, stavano facendo circa sessant''anni fa caricature di francesi che mangiano le rane ... ". Per gli inglesi, infatti, i francesi sono per eccellenza "mangiatori di rane" ( inglesi  : mangiatori di rane ), francesi che hanno soprannominato più o meno affettuosamente, contraendo l''espressione precedente, Frogs o Froggies .' ),
('Filet mignon', 'food/filet_mignon.jpg', 'Secondo', 'La parte finale del filetto, quella più stretta, in America viene chiamata Filet Mignon ed è uno dei tagli più popolari per l’assenza di grasso ed al contrario dello Châteaubriand è ottimo anche crudo o appena scottato.' ),
('Ratatouille', 'food/ratatouille.jpg', 'Secondo', 'La parola ratatouille viene dall''occitano "ratatolha", simile al francese "touiller" che significa "rimestare". La ratatouille era originariamente un piatto per contadini poveri, preparato in estate con verdure fresche. L''originale ratatouille niçoise non conteneva le melanzane non essendo reperibili nello stesso periodo dell''anno delle altre verdure. Gli ingredienti originari della ratatouille tradizionale sono pomodori, zucchine, peperoni, cipolle ed aglio. Si possono aggiungere alcune erbe di Provenza e basilico. La ratatouille francese può essere servita come piatto a sé stante (accompagnata da riso, patate, o semplice pane francese). Più frequentemente viene servita come contorno.' ),
('Gratin dauphinois', 'food/gratin_dauphinois.jpg', 'Primo', 'Il gratin dauphinois è un piatto unico di origine francese preparato principalmente con patate e formaggio groviera. Il gratin dauphinois è un piatto molto saporito e perfetto nel periodo invernale. Il gratin dauphinois è una ricetta molto antica, orgoglio della cucina francese e in particolare del Delfinato, luogo di origine della ricetta. Come ogni ricetta tradizionale anche per il gratin dauphinois è molto difficile reperire una versione unica. Ogni famiglia infatti prepara il gratin dauphinois a proprio modo.' ),
('Profiterol', 'food/profiterol.jpg', 'Dolce', 'Il profiterole è un tipo di dolce (di origine francese) ottenuto con un bignè riempito di crema pasticcera, crema chantilly, panna o gelato, e poi ricoperto con una crema di cioccolato o di caramello. L''origine è probabilmente da attestarsi alla corte di Caterina de'' Medici, in particolare ad un suo cuoco, un certo Popelini, che creò il suddetto dolce, la cui fama si diffuse però solo nel XVII secolo. A Firenze infatti il dolce è chiamato "bongo", attestando un''origine probabilmente diversa da quella francese. La presentazione più comune di questo dolce avviene disponendo i singoli profiterole in una "montagnetta" chiamata croquembouche. I profiteroles sono utilizzati anche come guarnizione per la torta Saint Honoré. La parola (anche ortografata prophitrole, profitrolle, profiterolle) esiste dal sedicesimo secolo, ma il suo significato originale sia in inglese che in francese non è chiaro, anche se in seguito ha assunto il significato di una specie di panino "cotto sotto la cenere". L''attuale significato è attestato chiaramente solo dal diciannovesimo secolo. Un''altra origine del nome potrebbe essere quella di "profit", in francese profitto, guadagno. Nella ex provincia di Messina ne esiste una variante, chiamata bianco e nero.' ),
('Macarons', 'food/macarons.jpg', 'Dolce', 'Il macaron o macaron francese è un pasticcino il cui nome deriva dall''italiano dialettale "maccarone". È considerato da diversi autori transalpini come un prodotto francese, anche se le sue origini sono molto dibattute e più italiane che francesi. Larousse Gastronomique cita i macaron come dolci creati nel 1791 in un convento vicino Cormery. Fonti più antiche fanno risalire il dolce alla Venezia del XVI secolo e sarebbe giunto in Francia grazie a Caterina de'' Medici, la quale per un importante evento commissionò a un pasticcere italiano il dolce che portò con sé nel 1533, cioè quando sposò il Duca di Orleans Enrico II di Francia. Nel 1830, i macaron venivano serviti due a due con l''aggiunta di marmellate, liquori e spezie. Il macaron, come è noto oggi, è stato definito Gerbet o Paris macaron ed è stato creato all''inizio del XX secolo da Pierre Desfontaines della pasticceria francese Ladurée, ed è composto da due dischi di meringa alla mandorla riempiti con uno strato di crema al burro, marmellata o crema ganache.' ),
('Trate tartin', 'food/trate_tartin.jpg', 'Dolce', 'La tarte Tatin è una torta di mele capovolta, tipica della Francia, in cui le mele sono caramellate in burro e zucchero prima della cottura della torta. Secondo la leggenda, questo dolce sarebbe originario di Lamotte-Beuvron (nella regione del Centro): le sorelle Stephanie (1838-1917) e Caroline Tatin (1847-1911) gestivano un ristorante, che esiste ancora sotto il nome di "hôtel-restaurant Tatin", di fronte alla stazione frequentata da molti cacciatori. Una domenica, mentre preparavano una torta di mele per il pasto di alcuni cacciatori, una delle sorelle dimenticò di porre la pasta brisé al di sotto della torta, lasciando caramellare così le mele nel burro e nello zucchero. Per rimediare all''errore pose dunque la pasta brisée al di sopra del composto ottenuto e poi capovolse il tutto in un piatto. I cacciatori apprezzarono questa torta, che divenne così la "tarte tatin"' ),
('Soufflé', 'food/soufflé.jpg', 'Antipasto', 'Piatto classico della cucina francese, il soufflé può essere salato o dolce. Nella versione salata solitamente è a base di besciamella più formaggio o prosciutto o carni o pesci o verdure, ridotti in purè o tritati.' );

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
    lastPlay INTEGER,
    record INTEGER,
    tot INTEGER
);
INSERT INTO game(title, description, lastPlay, record, tot) VALUES
('Quiz', 'lorem ipum lorem ipum lorem ipum lorem ipum lorem ipum lorem ipum1 1', '0', '0', '100'),
('Vero o falso', 'lorem ipum lorem ipum lorem ipum lorem ipum lorem ipum lorem ipum1 2', '0', '0', '100'),
('title3', 'lorem ipum lorem ipum lorem ipum lorem ipum lorem ipum lorem ipum1 3', '0', '0', '100');


CREATE TABLE IF NOT EXISTS special_day(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    title TEXT,
    url TEXT,
    urlMap TEXT,
    description TEXT,
    locked INTEGER,
    www TEXT
);
INSERT INTO special_day(title , url, urlMap, description, locked, www) VALUES
('Step 1', 'place/place1.jpg', 'https://www.google.com/maps/embed?pb=!1m28!1m12!1m3!1d1408.8900260266505!2d7.677198708144566!3d45.06997268906614!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m13!3e6!4m5!1s0x47886d6d42be9a1f%3A0x8ea306681d25ab76!2sPiazza+Solferino%2C+10121+Torino+TO!3m2!1d45.0690615!2d7.6768027!4m5!1s0x47886d72386ad075%3A0x4d1acc0b146d0ab1!2sKensho%2C+Via+Mercanti%2C+16%2C+10122+Torino+TO!3m2!1d45.0708801!2d7.6803821999999995!5e0!3m2!1sit!2sit!4v1533717481937',
 'lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum', '1',
 'https://www.google.it/maps/dir/Piazza+Solferino,+10121+Torino+TO/Kensho,+Via+Mercanti,+16,+10122+Torino+TO/@45.0699727,7.6771987,18z/data=!3m1!4b1!4m13!4m12!1m5!1m1!1s0x47886d6d42be9a1f:0x8ea306681d25ab76!2m2!1d7.6768027!2d45.0690615!1m5!1m1!1s0x47886d72386ad075:0x4d1acc0b146d0ab1!2m2!1d7.6803822!2d45.0708801?hl=it'),
('Step 2', 'place/place2.jpg', 'https://www.google.com/maps/embed?pb=!1m28!1m12!1m3!1d1408.8900260266505!2d7.677198708144566!3d45.06997268906614!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m13!3e6!4m5!1s0x47886d6d42be9a1f%3A0x8ea306681d25ab76!2sPiazza+Solferino%2C+10121+Torino+TO!3m2!1d45.0690615!2d7.6768027!4m5!1s0x47886d72386ad075%3A0x4d1acc0b146d0ab1!2sKensho%2C+Via+Mercanti%2C+16%2C+10122+Torino+TO!3m2!1d45.0708801!2d7.6803821999999995!5e0!3m2!1sit!2sit!4v1533717481937',
 'lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum', '1',
 'https://www.google.it/maps/dir/Piazza+Solferino,+10121+Torino+TO/Kensho,+Via+Mercanti,+16,+10122+Torino+TO/@45.0699727,7.6771987,18z/data=!3m1!4b1!4m13!4m12!1m5!1m1!1s0x47886d6d42be9a1f:0x8ea306681d25ab76!2m2!1d7.6768027!2d45.0690615!1m5!1m1!1s0x47886d72386ad075:0x4d1acc0b146d0ab1!2m2!1d7.6803822!2d45.0708801?hl=it'),
('Step 3', 'place/place3.jpg', 'https://www.google.com/maps/embed?pb=!1m28!1m12!1m3!1d1408.8900260266505!2d7.677198708144566!3d45.06997268906614!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m13!3e6!4m5!1s0x47886d6d42be9a1f%3A0x8ea306681d25ab76!2sPiazza+Solferino%2C+10121+Torino+TO!3m2!1d45.0690615!2d7.6768027!4m5!1s0x47886d72386ad075%3A0x4d1acc0b146d0ab1!2sKensho%2C+Via+Mercanti%2C+16%2C+10122+Torino+TO!3m2!1d45.0708801!2d7.6803821999999995!5e0!3m2!1sit!2sit!4v1533717481937',
 'lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum', '1',
 'https://www.google.it/maps/dir/Piazza+Solferino,+10121+Torino+TO/Kensho,+Via+Mercanti,+16,+10122+Torino+TO/@45.0699727,7.6771987,18z/data=!3m1!4b1!4m13!4m12!1m5!1m1!1s0x47886d6d42be9a1f:0x8ea306681d25ab76!2m2!1d7.6768027!2d45.0690615!1m5!1m1!1s0x47886d72386ad075:0x4d1acc0b146d0ab1!2m2!1d7.6803822!2d45.0708801?hl=it'),
('Step 4', 'place/place1.jpg', 'https://www.google.com/maps/embed?pb=!1m28!1m12!1m3!1d1408.8900260266505!2d7.677198708144566!3d45.06997268906614!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m13!3e6!4m5!1s0x47886d6d42be9a1f%3A0x8ea306681d25ab76!2sPiazza+Solferino%2C+10121+Torino+TO!3m2!1d45.0690615!2d7.6768027!4m5!1s0x47886d72386ad075%3A0x4d1acc0b146d0ab1!2sKensho%2C+Via+Mercanti%2C+16%2C+10122+Torino+TO!3m2!1d45.0708801!2d7.6803821999999995!5e0!3m2!1sit!2sit!4v1533717481937',
 'lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum', '1',
 'https://www.google.it/maps/dir/Piazza+Solferino,+10121+Torino+TO/Kensho,+Via+Mercanti,+16,+10122+Torino+TO/@45.0699727,7.6771987,18z/data=!3m1!4b1!4m13!4m12!1m5!1m1!1s0x47886d6d42be9a1f:0x8ea306681d25ab76!2m2!1d7.6768027!2d45.0690615!1m5!1m1!1s0x47886d72386ad075:0x4d1acc0b146d0ab1!2m2!1d7.6803822!2d45.0708801?hl=it'),
('Step 5', 'place/place2.jpg', 'https://www.google.com/maps/embed?pb=!1m28!1m12!1m3!1d1408.8900260266505!2d7.677198708144566!3d45.06997268906614!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m13!3e6!4m5!1s0x47886d6d42be9a1f%3A0x8ea306681d25ab76!2sPiazza+Solferino%2C+10121+Torino+TO!3m2!1d45.0690615!2d7.6768027!4m5!1s0x47886d72386ad075%3A0x4d1acc0b146d0ab1!2sKensho%2C+Via+Mercanti%2C+16%2C+10122+Torino+TO!3m2!1d45.0708801!2d7.6803821999999995!5e0!3m2!1sit!2sit!4v1533717481937',
 'lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum', '1',
 'https://www.google.it/maps/dir/Piazza+Solferino,+10121+Torino+TO/Kensho,+Via+Mercanti,+16,+10122+Torino+TO/@45.0699727,7.6771987,18z/data=!3m1!4b1!4m13!4m12!1m5!1m1!1s0x47886d6d42be9a1f:0x8ea306681d25ab76!2m2!1d7.6768027!2d45.0690615!1m5!1m1!1s0x47886d72386ad075:0x4d1acc0b146d0ab1!2m2!1d7.6803822!2d45.0708801?hl=it'),
('Step 6', 'place/place3.jpg', 'https://www.google.com/maps/embed?pb=!1m28!1m12!1m3!1d1408.8900260266505!2d7.677198708144566!3d45.06997268906614!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m13!3e6!4m5!1s0x47886d6d42be9a1f%3A0x8ea306681d25ab76!2sPiazza+Solferino%2C+10121+Torino+TO!3m2!1d45.0690615!2d7.6768027!4m5!1s0x47886d72386ad075%3A0x4d1acc0b146d0ab1!2sKensho%2C+Via+Mercanti%2C+16%2C+10122+Torino+TO!3m2!1d45.0708801!2d7.6803821999999995!5e0!3m2!1sit!2sit!4v1533717481937',
 'lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum', '1',
 'https://www.google.it/maps/dir/Piazza+Solferino,+10121+Torino+TO/Kensho,+Via+Mercanti,+16,+10122+Torino+TO/@45.0699727,7.6771987,18z/data=!3m1!4b1!4m13!4m12!1m5!1m1!1s0x47886d6d42be9a1f:0x8ea306681d25ab76!2m2!1d7.6768027!2d45.0690615!1m5!1m1!1s0x47886d72386ad075:0x4d1acc0b146d0ab1!2m2!1d7.6803822!2d45.0708801?hl=it'),
('Step 7', 'place/place1.jpg', 'https://www.google.com/maps/embed?pb=!1m28!1m12!1m3!1d1408.8900260266505!2d7.677198708144566!3d45.06997268906614!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m13!3e6!4m5!1s0x47886d6d42be9a1f%3A0x8ea306681d25ab76!2sPiazza+Solferino%2C+10121+Torino+TO!3m2!1d45.0690615!2d7.6768027!4m5!1s0x47886d72386ad075%3A0x4d1acc0b146d0ab1!2sKensho%2C+Via+Mercanti%2C+16%2C+10122+Torino+TO!3m2!1d45.0708801!2d7.6803821999999995!5e0!3m2!1sit!2sit!4v1533717481937',
 'lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum', '1',
 'https://www.google.it/maps/dir/Piazza+Solferino,+10121+Torino+TO/Kensho,+Via+Mercanti,+16,+10122+Torino+TO/@45.0699727,7.6771987,18z/data=!3m1!4b1!4m13!4m12!1m5!1m1!1s0x47886d6d42be9a1f:0x8ea306681d25ab76!2m2!1d7.6768027!2d45.0690615!1m5!1m1!1s0x47886d72386ad075:0x4d1acc0b146d0ab1!2m2!1d7.6803822!2d45.0708801?hl=it'),
('Step 8', 'place/place2.jpg', 'https://www.google.com/maps/embed?pb=!1m28!1m12!1m3!1d1408.8900260266505!2d7.677198708144566!3d45.06997268906614!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m13!3e6!4m5!1s0x47886d6d42be9a1f%3A0x8ea306681d25ab76!2sPiazza+Solferino%2C+10121+Torino+TO!3m2!1d45.0690615!2d7.6768027!4m5!1s0x47886d72386ad075%3A0x4d1acc0b146d0ab1!2sKensho%2C+Via+Mercanti%2C+16%2C+10122+Torino+TO!3m2!1d45.0708801!2d7.6803821999999995!5e0!3m2!1sit!2sit!4v1533717481937',
 'lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum', '1',
 'https://www.google.it/maps/dir/Piazza+Solferino,+10121+Torino+TO/Kensho,+Via+Mercanti,+16,+10122+Torino+TO/@45.0699727,7.6771987,18z/data=!3m1!4b1!4m13!4m12!1m5!1m1!1s0x47886d6d42be9a1f:0x8ea306681d25ab76!2m2!1d7.6768027!2d45.0690615!1m5!1m1!1s0x47886d72386ad075:0x4d1acc0b146d0ab1!2m2!1d7.6803822!2d45.0708801?hl=it'),
('Step 9', 'place/place3.jpg', 'https://www.google.com/maps/embed?pb=!1m28!1m12!1m3!1d1408.8900260266505!2d7.677198708144566!3d45.06997268906614!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m13!3e6!4m5!1s0x47886d6d42be9a1f%3A0x8ea306681d25ab76!2sPiazza+Solferino%2C+10121+Torino+TO!3m2!1d45.0690615!2d7.6768027!4m5!1s0x47886d72386ad075%3A0x4d1acc0b146d0ab1!2sKensho%2C+Via+Mercanti%2C+16%2C+10122+Torino+TO!3m2!1d45.0708801!2d7.6803821999999995!5e0!3m2!1sit!2sit!4v1533717481937',
 'lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum', '1',
 'https://www.google.it/maps/dir/Piazza+Solferino,+10121+Torino+TO/Kensho,+Via+Mercanti,+16,+10122+Torino+TO/@45.0699727,7.6771987,18z/data=!3m1!4b1!4m13!4m12!1m5!1m1!1s0x47886d6d42be9a1f:0x8ea306681d25ab76!2m2!1d7.6768027!2d45.0690615!1m5!1m1!1s0x47886d72386ad075:0x4d1acc0b146d0ab1!2m2!1d7.6803822!2d45.0708801?hl=it');
