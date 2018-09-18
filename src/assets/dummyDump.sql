
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
('game-one/m_gemme.jpg', 'game-one/m_gemme_r.jpg', 'Quale di queste non è una gemma dell''infinito?', 'Del destino', 'Dell''anima', 'Dello spazio', 'Del potere', ''),
('game-one/m_pepper.jpg', 'game-one/m_pepper.jpg', 'Qual è il nome intero di Pepper?', 'Virginia Potts','Virgie Potts', 'Pepper Potts', 'Pepper Pot', ''),
('game-one/m_scettro.jpg', 'game-one/m_scettro_r.jpg', 'Quale gemma dell''infinito è contenuta nello scettro di Loki?', 'Della mente', 'Della giustizia', 'Dell''inganno', 'Del potere', ''),
('game-one/m_jane.jpg', 'game-one/m_jane.jpg', 'In cosa è specializzata Jane Foster?', 'Astrofisica', 'Astrologia', 'Fisica', 'Ingegneria spaziale', ''),
('game-one/m_vnHulk.jpg', 'game-one/m_vnHulk.jpg', 'Con quale frase la Vedova Nera riesce a calmare Hulk?', '"Il sole sta calando"', '"Il sole sta sorgendo"', '"Il sole sta tramontando"', '"Il sole sta arrivando"', 'Ehi, bel fusto. Il sole sta calando.'),
('game-one/m_jabari.jpg', 'game-one/m_jabari.jpg', 'In Black Panther, a quale tribù chiedono aiuto i protagonisti per sconfiggere Erik?', 'Dei Jabari', 'Dei Giaguari', 'Dei Leoni', 'Dei Baisani', ''),
('game-one/m_cWar.jpg', 'game-one/m_cWar_r.jpg', 'Chi non partecipa alla Guerra Civile degli Avengers?', 'Thor', 'Scarlett Witch', 'La Vedova Nera', 'Hawkeye', ''),
('game-one/m_ragnarok.jpg', 'game-one/m_ragnarok_r.jpg', 'Di chi era prigioniero Thor all''inizio di Thor - Ragnarok?', 'Demone Surtur', 'Thanos', 'Demone Ragnarok', 'Hela', ''),
('game-one/m_shield.jpg', 'game-one/m_wSoldier.jpg', 'In quale film del MCU viene distrutto lo S.H.I.E.L.D.?', 'Capt America - Wintier Solder', 'Capt America - Civil War', 'Iron Man III', 'Avengers - Age of Ultron', ''),
('game-one/m_bucky.jpg', 'game-one/m_wakanda.jpg', 'Dove o da chi è stato mandato Bucky per essere liberato dal controllo mentale dell''Hydra?', 'Nel Wakanda', 'Ad Asgard', 'In una base segreta dello S.H.I.E.L.D', 'Da Doctor Strange', ''),
('game-one/m_gGalassia.jpg', 'game-one/m_collezionista.jpg', 'Da chi scoprono l''esistenza delle gemme dell''infinito i Guardiani della Galassia?', 'Dal Collezionista', 'Da Ego', 'Dal Raccoglitore', 'Dal Collettore', ''),
('game-one/m_avengers.jpg', 'game-one/m_aTeam.jpg', 'Chi non fa parte della squadra originale dei Vendicatori?', 'War Machine', 'Vedova Nera', 'Captain America', 'Thor', ''),
('game-one/m_hVeronica.jpg', 'game-one/m_hVeronica.jpg', 'Come si chiama l''armatura di Iron Man per contrastare la forza di Hulk?', 'Veronica', 'Virginia', 'Vanessa', 'Mark XIII', ''),
('game-one/m_spiderMan.jpg', 'game-one/m_avvoltoio.jpg', 'Qual è l''antagonista principale di Spiderman in SpiderMan - Homecoming?', 'L''Avvoltoio', 'Rhino', 'Green Goblin', 'Electro', ''),
('game-one/m_spidy.jpg', 'game-one/m_spidy.jpg', 'In che anno è nata la figura dell''Uomo Ragno?', '1962', '1972', '1982', '1952', ''),
('game-one/m_wolverine.jpg', 'game-one/m_wolverine.jpg', 'Qual è il vero nome di Wolverine?', 'James Howlett', 'John Hewlett', 'Jonathan Howletts', 'John Howletts', ''),
('game-one/m_avengers.jpg', 'game-one/m_cAmerica.jpg', 'Chi viene considerato il primo vero supereroe?', 'Capitan America', 'L''uomo Ragno', 'Superman', 'Iron Man', ''),
('game-one/m_wolverine.jpg', 'game-one/m_wolverine.jpg', 'In quale fumetto appare per la prima volta Wolverine?', 'Hulk', 'Thor', 'Iron Man', 'Spiderman', 'La sua prima apparizione è in The Incredible Hulk (vol. 2) n. 180 (ottobre 1974) in un breve cameo, ma il vero e proprio esordio è stato il mese successivo sul n. 181 della stessa serie.'),
('game-one/m_ironMan.jpg', 'game-one/m_ironMan.jpg', 'In quale Paese il futuro Iron Man rimane ferito con la famosa scheggia nel petto?', 'Afghanistan', 'Vietnam', 'Cina', 'Iran', ''),
('game-one/m_mjolnir.jpg', 'game-one/m_mjolnir.jpg', 'Come si chiama il martello di Thor?', 'Mjolnir', 'Molnjr', 'Melnir', 'Mjolnhir', ''),
('game-one/m_fQuattro.jpg', 'game-one/m_fQuattro.jpg', 'Come si chiamano i Fantastici 4?', 'Reed, Susan, Ben, Johnny', 'Red, Sue, Bill, John', 'Richard, Sarah, Bart, Jim', 'Red, Sue, Ben, John', ''),
('game-one/m_xMan.jpg', 'game-one/m_xMan_r.jpg', 'Nel primo gruppo formato dal Professor X erano presenti:', 'Ciclope e Jean Grey', 'Tempesta e Ciclope', 'Jean Grey e Wolverine', 'Ciclope e Tempesta', ''),
('game-one/m_stanLee.jpg', 'game-one/m_jackKirby.jpg', 'Chi, insieme a Stan Lee, creò, agli albori della Marvel, la maggior parte dei personaggi?', 'Jack Kirby', 'Frank Miller', 'John Romita Jr.', 'Frank Romita', ''),
('game-one/m_hulk.jpg', 'game-one/m_hulk_r.jpg', 'Quale attore ha interpretato Bruce Banner nel primo film di Hulk?', 'Eric Bana', 'Edward Norton', 'Mark Ruffalo', 'Poul Liroi', ''),
('game-one/m_xManInizio.jpg', 'game-one/m_xManInizio_r.jpg', 'Nelle acque di quale isola si svolge la battaglia finale in X-Men-L’inizio?', 'Cuba', 'Rep. Domenicana', 'Thaiti', 'Tenerife', ''),
('game-one/m_gGalassia.jpg', 'game-one/m_pQuillBaby.jpg', 'In che anno Peter Quill viene rapito dalla Terra e portato nello spazio?', '1988', '1970', '1992', '1976', ''),
('game-one/m_fAntMan.jpg', 'game-one/m_fAntMan.jpg', 'Come si chiamano gli amici di Ant-Man?', 'Luis, Dave e Kurt', 'Luis, Jhon e Igor', 'Luis, Mike a Anton', 'Luis, Dave e Igor', ''),
('game-one/m_wolverine.jpg', 'game-one/m_wolverine.jpg', 'In quanti film degli X-Men appare Wolverine?', '8', '5', '3', '6', ''),
('game-one/m_magneto.jpg','game-one/m_magneto.jpg', 'Chi sono i mutanti che lavorano per Magneto quando decide di rapire Rogue?', 'Mistica, Sabertooth e Rospo', 'Mistica, Azazel e Sabertooth', 'Mistica, Rospo e Wolwerine', 'Mistica, Azazel e Rospo', ''),
('game-one/m_tDWorld.jpg', 'game-one/m_hogun.jpg', 'Quale tra i fedeli compagni di Thor lo lascia all’inizio di Thor: The Dark World?', 'Hogun', 'Volstagg', 'Fandral', 'Lady Sif', ''),
('game-one/m_spidy.jpg', 'game-one/m_spidy.jpg','Qual è il vero nome di Spider-Man?', 'Peter Parker', 'Bruce Wayne', 'Clark Kent', 'answ3', ''),
('game-one/m_batMan.jpg', 'game-one/m_gCity.jpg', 'Dove vive Batman?', 'Gotham City', 'New York', 'Dimmsdale', 'Brooklyn', ''),
('game-one/m_tNinja.jpg', 'game-one/m_tNinja.jpg', 'Quale Tartaruga Ninja ha la bandana blu?', 'Leonardo', 'Raffaello', 'Donatello', 'Michelangelo', ''),
('game-one/m_mDC.jpg', 'game-one/m_gStacy.jpg', 'Quale supereroe ha un''amica di nome Gwen Stacy?', 'Spider-Man', 'Batman', 'Superman', 'Iron Man', ''),
('game-one/m_tNinja.jpg', 'game-one/m_tNPizza.jpg', 'Qual è il cibo preferito dalle Tartarughe Ninja?', 'Pizza', 'Bacon', 'Hamburger', 'Patatine', ''),
('game-one/m_aWorlock.jpg', 'game-one/m_aWorlock_r.jpg', 'In quale film Marvel è presente per la prima volta Adam Warlock?', 'Thor - The Dark World', 'The Avengers', 'Guardiani della Galassia', 'Guardiani della Galassia 2', 'Il personaggio appare in un bozzolo nel seguito di Thor'),
('game-one/m_gemme.jpg', 'game-one/m_guanto_r.jpg', 'Il Guanto dell''Infinito fa un''apparizione furtiva in quale film Marvel?', 'Thor', 'Iron Man III', 'Capt America 1', 'Guardiani della Galassia', 'Eccolo che brilla nella stanza dei trofei di Odino.'),
('game-one/m_cameoDuck.jpg', 'game-one/m_cameoDog.jpg', 'Questo è un cameo di Howard the Duck in Guardiani della Galassia - ma quale altro personaggio Marvel fa un''apparizione fugace nel film?', 'Cosmo the Dog', 'Super Rabbit', 'Toughy Tomcat', 'Space the Fish', ''),
('game-one/m_sLHHefner.jpg', 'game-one/m_sLHHefner_r.jpg', 'In quale film Marvel Stan Lee è scambiato per Hugh Hefner?', 'Iron Man', 'L''Incredibile Hulk', 'Capt America', 'Hulk', 'Stan the Man interpreta il creatore di Playboy nel film Iron Man del 2008.'),
('game-one/m_cAmerica.jpg', 'game-one/m_cATUmana.jpg', 'Captain America 1 presenta uno sguardo veloce su di uno storico personaggio Marvel. Quale?', 'Torcia Umana', 'Namor', 'Spitfire', 'Flash', 'La versione androide originale di Torcia Umana è esposta in Captian America: il primo vendicatore.'),
('game-one/m_ironMan.jpg', 'game-one/m_ironMan.jpg', 'Quale film di Iron Man fa un riferimento diretto alla serie di cartoni animati anni ''60?', 'Iron Man', 'Iron Man II', 'Iron Man III', 'Iron Man IIII', 'Una versione jazz di questo brano può essere ascoltato durante la scena del casinò del primo Iron Man.'),
('game-one/m_collana.jpg', 'game-one/m_collana_r.jpg', 'Chi porta questo ciondolo con una freccia intorno al collo?', 'Natasha Romanoff', 'Maria Hill', 'Pepper Potts', 'Lady Sif', 'La freccia suggerisce un legame in comune tra Black Widow e Hawkeye.'),
('game-one/m_nFury.jpg', 'game-one/m_nFury.jpg', 'Chi interpreta il direttore della S.H.I.E.L.D. Nick Fury?', 'Samuel L. Jackson', 'Robert Downey Jr.', 'Mark Ruffalo', 'Thom Hiddleston', ''),
('game-one/m_cAmerica.jpg', 'game-one/m_cAmerica.jpg', 'L''indistruttibile scudo di Captain America è fatto di...?', 'Vibranio', 'Adamantio', 'Argento', 'Materiale sconosciuto', ''),
('game-one/m_wolverine.jpg', 'game-one/m_wolverine.jpg', 'Gli indistruttibili artigli di Wolverine è fatto di...?', 'Adamantio', 'Vibranio', 'Argento', 'Platino', ''),
('game-one/m_avengers.jpg', 'game-one/m_loki.jpg', 'Il villain del primo film sui Vendicatori è interpretato da Tom Hiddleston: ricordi il suo nome?', 'Loki', 'Thanos', 'Venom', 'Teschio Rosso', ''),
('game-one/m_oDFalco.jpg', 'game-one/m_oDFalco.jpg', 'L’attore Jeremy Renner, nei panni di Occhio di Falco, per il film ha dovuto imparare a...?', 'Tirare con l''arco', 'Cavalcare', 'Guidare un elicottero', 'Guidare la moto', ''),
('game-one/m_vNeraIM.jpg', 'game-one/m_vNeraIM_r.jpg', 'Scarlett Johansson interpreta Vedova Nera. In quale film era già comparsa, prima degli Avengers?', 'Iron Man II', 'Spider Man - HomeComing', 'Capt America - The Winter Soldier', 'Iron Man III', ''),
('game-one/m_cWar.jpg', 'game-one/m_bPanter.jpg', 'Chi fra i seguenti supereroi compare per la prima volta in Civil War?', 'Black Panther', 'Thor', 'Hulk', 'Iron man', ''),
('game-one/p_barbossa.jpg', 'game-one/p_medaglione.jpg', 'Cosa cerca Barbossa in La maledizione della prima luna?', 'Un medaglione', 'Jack Sparrow', 'Un forziere', 'Will Turner', ''),
('game-one/p_dJones.jpg', 'game-one/p_dJones.jpg', 'Cosa contiene il forziere di Davy Jones in La maledizione del forziere fantasma?', 'Il suo cuore', 'La sua anima', 'Dobloni', 'Una mappa', ''),
('game-one/p_dJones.jpg', 'game-one/p_oVolante.jpg', 'Come si chiama la nave di Davy Jones?', 'L''Olandese Volante', 'Interceptor', 'Queen Anne''s Revenge', 'HMS Dauntless', ''),
('game-one/p_interceptor.jpg', 'game-one/p_interceptor.jpg', 'Come si chiama la nave che viene requisita nella Maledizione della prima luna?', 'Interceptor', 'L''Olandese Volante', 'Queen Anne''s Revenge', 'HMS Dauntless', ''),
('game-one/p_tDalma.jpg', 'game-one/p_tDalma.jpg', 'Chi è in realtà Tia Dalma?', 'Calypso', 'Afrodite', 'Una sirena', 'La Dea del Mare', ''),
('game-one/p_jSparrow.jpg', 'game-one/p_kRichards.jpg', 'A chi ha dichiarato di essersi ispirato Johnny Depp nella creazione di Jack Sparrow?', 'Keith Richards', 'Mick Jagger', 'Jimi Hendrix', 'Paul McMauth', ''),
('game-one/p_sFeng.jpg', 'game-one/p_sFeng.jpg', 'Come si chiama questo personaggio?', 'Sao Feng', 'Lo Pan', 'Lao Chang', 'Sie Pan', ''),
('game-one/p_jSparrow.jpg', 'game-one/p_jSparrow.jpg', 'A cosa fu ispirata inizialmente la saga di Pirati dei Caraibi?', 'Una giostra', 'Un fumetto', 'Una serie di romanzi', 'Un gioco', ''),
('game-one/p_bDRelitti.jpg', 'game-one/p_bDRelitti.jpg', 'Come si chiama il luogo in cui si incontra il consiglio dei Nove Pirati Nobili in Ai confini del mare?', 'Baia dei Reilitti', 'Isla de Muerta', 'Isla Cruces', 'Tortuga', ''),
('game-one/p_interceptor.jpg', 'game-one/p_interceptor.jpg', 'Come si chiama la nave che viene requisita nella Maledizione della prima luna?', 'Interceptor', 'L''Olandese Volante', 'Queen Anne''s Revenge', 'HMS Dauntless', ''),
('game-one/p_bNera.jpg', 'game-one/p_bNera.jpg', 'Qual è il vero nome del pirata Barbanera?', 'Edward Teach', 'Weatherby Swann', 'Bill Turner', 'Davy Jones', ''),
('game-one/p_oCDMare.jpg', 'game-one/p_sirena.jpg', 'Quale, tra queste cose, è necessaria per usufruire della fonte della giovinezza in Oltre i confini del mare?', 'Una lacrima di sirena', 'Un''ala di pipistrello', 'Un occhio di salamandra', 'Squame di Tritone', ''),
('game-one/p_pNobili.jpg', 'game-one/p_pNobili_r.jpg', 'Quanti sono i Pirati Nobili?', '9', '7', '6', '8', ''),
('game-one/p_deiCaraibi.jpg', 'game-one/p_barbossa.jpg', 'Chi è il Capitano della Perla Nera nel primo film?', 'Barbossa', 'Barbanera', 'Davy Jons', 'Jack Sparrow', ''),
('game-one/p_pNobili.jpg', 'game-one/p_pNobili.jpg', 'Chi interpreta il padre di Jack Sparrow nel terzo film della saga?', 'Keith Richards', 'Paul McCartney', 'Frank Zappa', 'Mick Jagger', ''),
('game-one/p_hCortes.jpg', 'game-one/p_hCortes.jpg', 'Di chi era originariamente il tesoro maledetto de La Maledizione della Prima Luna?', 'Herman Cotes', 'Francisco Pizarro', 'Francisco Varquez de Coronado', 'Hemanuel Cortez', ''),
('game-one/p_oCDMare.jpg', 'game-one/p_mStregati.jpg', 'Pirati dei Caraibi Oltre i Confini del Mare è l''adattamento di un libro, quale?', 'Mari Stregati', 'L''Isola del Corsaro Verde', 'Monkey Island', 'L''Isola del Tesoro', ''),
('game-one/p_jSparrow.jpg', 'game-one/p_jSparrow.jpg', 'Come dice di essere scappato Jack Sparrow dall''isolotto deserto dove lo ha lasciato Barbossa prima dell''inizio del primo film?', 'Tartarughe marine', 'Sirene', 'Pellicani', 'Con una zattera', ''),
('game-one/h_potter.jpg', 'game-one/h_potter.jpg', 'Harry Potter è nato il...?', '31 luglio 1980', '31 luglio 2004', '31 dicembre 1988', '31 maggio 2004', ''),
('game-one/h_edvige.jpg', 'game-one/h_eHagrid.jpg', 'Chi regala Edvige ad Harry?', 'Rubeus Hagrid', 'Draco Malfoy', 'Horace Lumacorno', 'Ginny Weasley', ''),
('game-one/h_sBlack.jpg', 'game-one/h_bellatrix.jpg', 'Sirius Black è stato ucciso da?', 'Sua cugina', 'Sua sorella', 'Sua sorellastra', 'Sua cognata', ''),
('game-one/h_ron.jpg', 'game-one/h_pRon.jpg', 'Di che razza è il cane del Patronus di Ron?', 'Jack Russell Terrier', 'Bracco di Weimar', 'Beagle', 'Pointer Inglese', ''),
('game-one/h_gPlace.jpg', 'game-one/h_gPlace.jpg', 'La sede dell''Ordine della Fenice è...?', 'Grimmauld Place, 12', 'Privet Drive, 4', 'Grimmauld Drive, 12', 'Grimmauld Place, 4', ''),
('game-one/h_fDelacour', 'game-one/h_fDelacour', 'Di che legno è composta la bacchetta di Fleur Delacour?', 'Rosa', 'Biancispino', 'Agrifoglio', 'Sambuco', ''),
('game-one/h_hGirotempo.jpg', 'game-one/h_hGirotempo.jpg', 'In quale libro Hermione usa la collana giratempo?', 'Il prigioniero di Azkaban', 'La pietra filosofale', 'L''Ordine della Fenice', 'answ3', ''),
('game-one/h_deluminatore.jpg', 'game-one/h_deluminatore.jpg', 'Qual è l’altro nome usato per il deluminatore?', 'Spegnino', 'Non c''è altro nome', 'Cattura luce', 'Spegni luce', ''),
('game-one/h_voldemort.jpg', 'game-one/h_voldemort.jpg', 'Quale di questi non è un Horcrux di Voldemort?', 'Diadema di Tosca Tassorosso', 'Anello di Orvolosum Gaunt', 'Medaglione di Serpeverde', 'Nagini', ''),
('game-one/h_sectusempra.jpg', 'game-one/h_sectusempra.jpg', 'Nel libro "Harry Potter e il Principe Mezzosangue" qual è l’incantesimo usato da Harry contro Draco nel bagno di Mirtilla Malcontenta?', 'Sectumsempra', 'Serpensortia', 'Salvio Hexia', 'Serpentsempra', ''),
('game-one/h_fDelacour.jpg', 'game-one/h_bCeppo.jpg', 'Chi accompagnò Fleur Delacour al Ballo del Ceppo?', 'Roger Davies', 'Dennis Creevy', 'Owen Cauldwell', 'David Reaps', ''),
('game-one/h_lHangleton.jpg', 'game-one/h_lHangleton.jpg', 'Qual era il nome del villaggio dove risiedevano i Riddle?', 'Little Hangleton', 'Little Hallow', 'Little Hollow', 'Little Hanglot', ''),
('game-one/h_cSegreti.jpg', 'game-one/h_cSegreti_r.jpg', 'Completa la frase: “La Camera dei Segreti è stata aperta. Temete nemici...”', 'Dell''erede', 'Del Maestro', 'Dell''Oscuro', 'Del Prescelto', ''),
('game-one/h_hMalfoy.jpg', 'game-one/h_mMalkin.jpg', ' Nel primo film, Harry incontra Draco Malfoy a Hogwarts, ma nel libro il loro primo incontro accade...?', 'Da Madame Malkin', 'Nella Banca Gringott', 'Da Elyot', 'Sul treno per Hogwarts', 'Madame Malkin, Abiti per tutte le taglie'),
('game-one/h_hogwarts.jpg', 'game-one/h_eDoge.jpg', 'Quale dei seguenti personaggi non fu un preside di Hogwarts?', 'Elphias Doge', 'Severus Piton', 'Phineas Nigellus Black', 'Phyllida Spore', ''),
('game-one/h_dMorte.jpg', 'game-one/h_dMorte.jpg', ' Quale dei seguenti è uno dei Doni della Morte?', 'Pietra della ressurrezione', 'Bacchetta di salice', 'Bacchetta di prugno', 'Pietra della reincarnazione', ''),
('game-one/h_eSilente.jpg', 'game-one/h_tPorco.jpg', 'Dove viene fondato L’Esercito di Silente?', 'Al Pub Testa di Porco', 'Nella Stanza delle Necessita', 'Ai Tre Manici di Scopa', 'Nella Stanberga Strillante', ''),
('game-one/h_azkaban.jpg', 'game-one/h_BCJr.jpg', 'Quale di questi maghi è stato il primo a riuscire ad evadere dalla prigione di Azkaban?', 'Bartemius Crouch Jr.', 'Sitius Black', 'Avery Junior', 'Bellatrix Lestrange', ''),
('game-one/h_quidditch.jpg', 'game-one/h_quidditch_r.jpg', 'Qual è il numero che Harry porta sulla maglietta di Quidditch?', '7', '12', '5', '15', ''),
('game-one/h_animagus.jpg', 'game-one/h_animagus.jpg', 'Quanti Animagus si trovano nei romanzi di Harry Potter?', '7', '4', '6', 'Rita Skeeter, Peter Pettigrew, Sirius Black, James Potter e Minerva McGrannit'),
('game-one/h_dobby.jpg', 'game-one/h_dobby.jpg', 'La prima volta che Harry ha visto Dobby in camera sua, i Dursley avevano ospiti a cena?', 'I signori Mason', 'I signori Jones', 'I signori Harrison', 'I signori Ford', ''),
('game-one/h_silenteDead.jpg', 'game-one/h_bedaBardo.jpg', 'Cosa lasciò Silente a Hermione nel suo testamento?', 'Le fiabe di Beda il Bardo', 'La collana giratempo', 'Il deluminatore', 'La spada di Grifondoro', ''),
('game-one/h_dMorte.jpg', 'game-one/h_dMorte_r.jpg', 'Chi è l’unico vero padrone della morte?', 'Harry Potter', 'Voldemort', 'Albus Silente', 'Severus Piton', '"Tu sei il vero padrone della morte perchè il vero padrone della morte non cerca di sfuggirle ma accetta il fatto di dover morire ed è consapevole che esistono cose assai peggiori in questo mondo che cessare di vivere"... Silente a Harry'),
('game-one/h_mappa.jpg', 'game-one/h_mappa_r.jpg', 'In che ordine vengono citati i nomi nella Mappa del Malandrino?', 'Lunastorta, Codaliscia, Felpato e Ramoso', 'Ramoso, Lunastorta, Felpato e Codaliscia', 'Felpato, Codaliscia, Lunastorta e Ramoso', 'Ramoso, Felpato, Codaliscia e Lunastorta', ''),
('game-one/h_sgnaWeasly.jpg', 'game-one/h_weasly.jpg', 'Quanti figli hanno i signori Weasley?', '7', '6', '9', '8', ' Il figlio maggiore è Bill Weasley (cacciatore di tesori per la Gringott), a cui seguono Charlie Weasley (che si trova in Romania per allevare i draghi), Percy Weasley (che diviene prefetto e caposcuola di Hogwarts per poi trovare un lavoro al ministero), Fred e George Weasley (i gemelli combinaguai, fuggiti da Hogwarts e poi titolari di Tiri Vispi Weasley, un negozio di scherzi a Diagon Alley), Ron Weasley (miglior amico di Harry ad Hogwarts) e infine Ginny Weasley (la sorella più piccola, peraltro unica ragazza della famiglia, e futura moglie di Harry).'),
('game-one/h_fMalfoy.jpg', 'game-one/h_fMalfoy.jpg', 'Chi sono i prigionieri a Villa Malfoy nell''ultimo episodio della saga?', 'Harry, Ron, Hermione, Dean Thomas, Ollivander, Luna Lovegood e Unci-Unci', 'Harry, Ron, Hermione, Luna Lovegood e Unci-Unci', 'Harry, Ron, Hermione, Ollivander, Luna Lovegood e Unci-Unci', 'Harry, Ron, Hermione, Dean Thomas, Luna Lovegood e Unci-Unci', ''),
('game-one/h_vecchi.jpg', 'game-one/h_vecchi.jpg', 'Quanti anni passano fra il penultimo e l’ultimo capitolo del romanzo "Harry Potter e I doni della morte"?', '19', '20', '21', '22', ''),
('game-one/h_nFlamel.jpg', 'game-one/h_nFlamel.jpg', 'Chi creò la Pietra Filosofale?', 'Nicholas Flamel', 'Benedictus Figulus', 'Albertus Magnus', 'Benedictus Nicolai', ''),
('game-one/h_weasly.jpg', 'game-one/h_weasly.jpg', 'In ordine di nascita chi sono i figli Weasley?', 'Bill, Charlie, Percy, George, Fred, Ron e Ginny', 'Charlie, Percy, Bill, Fred, George, Ron e Ginny', 'Bill, Percy, Charlie, George, Fred, Ron e Ginny', 'Charlie, Bill, Percy, Fred, George, Ron e Ginny', 'Il figlio maggiore è Bill Weasley (cacciatore di tesori per la Gringott), a cui seguono Charlie Weasley (che si trova in Romania per allevare i draghi), Percy Weasley (che diviene prefetto e caposcuola di Hogwarts per poi trovare un lavoro al ministero), Fred e George Weasley (i gemelli combinaguai, fuggiti da Hogwarts e poi titolari di Tiri Vispi Weasley, un negozio di scherzi a Diagon Alley), Ron Weasley (miglior amico di Harry ad Hogwarts) e infine Ginny Weasley (la sorella più piccola, peraltro unica ragazza della famiglia, e futura moglie di Harry).'),
('game-one/h_voldemort.jpg', 'game-one/h_voldemort.jpg', 'In quale libro della saga Voldemort non è presente?', 'Il prigioniero di Azkaban', 'La camera dei segreti', 'Il principe mezzosangue', 'Compare in ogni libro', 'E'' assente in tre dei suoi capitoli: Harry Potter e la camera dei segreti (in cui compare solo come ricordo generato da un suo Horcrux), Harry Potter e il prigioniero di Azkaban (in cui è totalmente assente e viene dunque solo menzionato) e Harry Potter e il principe mezzosangue (in cui compare solo nei ricordi di altri personaggi, Albus Silente e Horace Lumacorno).'),
('game-one/h_potter.jpg', 'game-one/h_potter.jpg', 'Quanti anni ha Harry quando viene affidato ai Dursley?', '6 mesi', '1 mese', '12 mesi', '18 mesi', ''),
('game-one/h_tana.jpg', 'game-one/h_tana.jpg', ' Chi sta lavando i piatti quando Harry arriva alla Tana per la prima volta?', 'I piatti si lavano da soli', 'La Signora Weasley', 'Gynny', 'La tata', ''),
('game-one/h_hagrid.jpg', 'game-one/h_ippogrifo.jpg', 'Durante la prima lezione di Cura delle creature magiche, Hagrid mostra ai suoi studenti un animale. Qual è?', 'Un Therstral', 'Un Ippogrifo', 'Un''Acramantula', 'Uno Schiopodi Sparacoda', ''),
('game-one/h_dMorte.jpg', 'game-one/h_bedaBardo.jpg', 'In quale libro Hermione trova un disegno del simbolo della collana di Xenofilius Lovegood?', 'Le fiabe di Beda il Bardo', 'Il libro Mostro dei Mostri', 'Storia della Magia', 'La storia di Hogwarts', ''),
('game-one/h_dAOScure.jpg', 'game-one/h_dAOScure.jpg', 'Durante i romanzi della saga, quanti professori di Difesa contro le Arti Oscure ci sono?', '6', '9', '8', '7', 'Quirinus Quirrell, Gilderoy Lockhart, Remus Lupin, Alastor Moody, Dolores Umbridge e Severus Piton'),
('game-one/h_ginny.jpg', 'game-one/h_famiglia.jpg', 'Come si chiama la figlia di Harry e Ginny?','Lily Luna', 'Lily Rose', 'Lily Silente', 'Hanno solo figli maschi', ''),
('game-one/h_jKRowling.jpg', 'game-one/h_jKRowling.jpg', 'Qual è il vero nome di J.K. Rowling?', 'Joanne Rowling, la K è inventata', 'Joanne Kathleen Rowling','Joanne Katy Rowling', 'Joanne Katie Rowling', 'Pseudonimo J. K. Rowling (in cui "K" sta per Kathleen, nome della nonna paterna), motivo per cui la scrittrice è spesso indicata impropriamente come Joanne Kathleen Rowling.'),
('game-one/h_jKRowling.jpg', 'game-one/h_jKRowling.jpg', 'J.K. Rowling ebbe l’ispirazione per Harry Potter mentre era…?', 'Seduta su un treno', 'In un Pub di Londra', 'In vacanza in Grecia', 'In coda al Supermarket', 'Harry è assente con Corvonero, trovandosi in infermeria al momento dell''incontro (4 giugno 1992). Grifondoro viene sconfitto dagli avversari (peggior sconfitta del secolo) che conquistano la Coppa'),
('game-one/h_quidditch.jpg', 'game-one/h_quidditch.jpg', ' Nel primo anno di Harry a Hogwarts, Grifondoro perde una sola partita di Quidditch. Contro quale casa?', 'Corvonero', 'Serpeverde', 'Tassorosso', 'Non perdono nessuna partita', ''),
('game-one/h_bedaBardo.jpg', 'game-one/h_bedaBardo.jpg', 'Quante storie contengono le Fiabe di Beda il Bardo?', '5', '7', '11', '9', 'Il mago e il pentolone salterino, La fonte della buona sorte, Lo stregone dal cuore peloso, Baba Raba e il ceppo ghignante e La storia dei tre fratelli'),
('game-one/h_quidditch.jpg', 'game-one/h_quidditch.jpg', 'Quale viene considerata, secondo il libro “Il Quidditch attraverso i secoli” la nascita ufficiale di questo sport?', 'L''introduzione del Boccino D''Oro', 'La prima Coppa del Mondo', 'La prima partita di Polo su manici di scopa', 'L''evoluzione del Queerditch', 'La sua nascita risale all''XI secolo nella Palude di Queerditch ("strano fossato"), in Inghilterra.Il Queerditch inizialmente era molto simile al Rugby: i giocatori dovevano passarsi una palla di cuoio e cercare di farla passare tra due alberi che costituivano la meta avversaria, protetta da un portiere. Siccome il gioco non era molto coinvolgente e la palla cadeva spesso nel fango diventando introvabile (dato il suo colore), vennero effettuati alcuni cambiamenti:la palla fu realizzata in cuoio rosso, per renderla più visibile;nel XII secolo vennero introdotte due palle (Bolidi) che avevano il compito di svolazzare cercando di disarcionare i giocatori dal manico di scopa e, di conseguenza, vennero inseriti due nuovi giocatori che dovevano difendere i compagni di squadra dai Bolidi;la conformazione fisica della meta fu modificata: non più una "porta" formata da una coppia di alberi, ma un "canestro" costituito da una botte fissata a un albero;Dopo questi cambiamenti il Queerditch diventa il Kwidditch. Nel XIII secolo c''era un altro sport magico che era popolare come il Kwidditch. Si tratta della caccia al Golden Snidget, un piccolo uccello molto veloce, che tuttavia, in seguito fu sostituito da una piccola sfera dorata dotata di ali detta Boccino d''Oro. Un giorno un mago decise di fondere insieme i due sport: da quel momento si verificarono una serie di cambiamenti che trasformarono il Kwidditch nel Quidditch odierno'),
('game-one/t_transformers.jpg', 'game-one/t_transformers.jpg', 'Quanti film della saga di Transformers sono stati diretti da Michael Bay?', '5', '3', '2', '4', ''),
('game-one/t_mFox.jpg', 'game-one/t_mFox.jpg', 'In quanti film della saga di Transfomers la bella Megan Fox ha interpretato Mikaela?', '2', '3', '1', '4', ''),
('game-one/t_rosieH-W.jpg', 'game-one/t_rosieH-W.jpg', 'Subito dopo Megan Fox, quale attrice ha preso il suo posto nella saga?', 'Rosie Huntington-Whiteley', 'Gal Gadot', 'Belén Rodriguez', 'Nicola Peltz', ''),
('game-one/t_bumblebee.jpg', 'game-one/t_bumblebee_r.jpg', 'Nella serie, il mitico Bumblebee si trasforma in un''auto. Quale?', 'Chevrolet Camaro', 'Ferrari 355 GTS', 'Fiat 500', 'Jaguar XF', ''),
('game-one/t_transformers.jpg', 'game-one/t_spielberg.jpg', 'C''è un celebre regista tra i produttori esecuti della saga cinematografica. Chi è?', 'Steven Spielberg', 'Gore Verbinski', 'Paolo Sorrentino', 'Christopher Nolan', ''),
('game-one/t_eSpeciali_r.jpg', 'game-one/t_eSpeciali.jpg', 'Qual è la principale casa che si è occupata degli effetti visivi dei Transformers cinematografici?', 'Industrial Light & Magic', 'Pixar', 'Cinecittà Digital', 'Weta Digital', ''),
('game-one/t_turturro.jpg', 'game-one/t_turturro.jpg', 'In quale film della serie il personaggio di John Turturro, Simmons, NON è apparso?', 'L''era dell''estinzione', 'Transformers', 'La vendetta del caduto', 'Transformers 3', ''),
('game-one/t_dGirl.jpg', 'game-one/t_dGirl.jpg', 'In quale lungometraggio della serie un Decepticon prende le sembianze di una sexy studentessa universitaria?', 'La vendetta del caduto', 'L''era dell''estinzione', 'Transformers', 'Transformers 3', ''),
('game-one/ts_martell.jpg', 'game-one/ts_martell.jpg', 'Cosa raffigura lo stemma di Casa Martell?', 'Una lancia dorata che trafigge un sole rosso', 'Due torri blu collegate da un ponte', 'Un kraken dorato', 'Una trota argentata', ''),
('game-one/ts_tLannister.jpg', 'game-one/ts_tLannister_r.jpg', 'In quale di questi luoghi si trova Tywin Lannister quando suo figlio, Tyrion, lo uccide?', 'Latrina', 'Sala del Trono', 'Camera da letto', 'Tempio di Baelor', ''),
('game-one/ts_regni.jpg', 'game-one/ts_regni.jpg', 'La Strada del Re attraversa i Sette Regni dal Castello Nero, alla Barriera, fino a?', 'Capo Tempesta', 'Approdo del Re', 'Moat Cailin', 'Dorne', ''),
('game-one/ts_meereen.jpg', 'game-one/ts_meereen.jpg', 'Quale di queste non è una delle Città Libere?', 'Meereen', 'Braavos', 'Norvos', 'Qohor', ''),
('game-one/ts_copertina.jpg', 'game-one/ts_jMormot.jpg', 'Quale di questi personaggi ha detto: “In ogni uomo si annida una belva che si desta appena egli impugna una spada”?', 'Jorah Mormont', 'Bronn', 'Daario Naharis', 'Jaime Lannister', ''),
('game-one/ts_copertina.jpg', 'game-one/ts_copertina.jpg', 'Quanti milioni di dollari ha richiesto la produzione del primo episodio?', '10', '2', '6', '25', ''),
('game-one/ts_dTargarian.jpg', 'game-one/ts_dTargarian.jpg', 'Quale di questi epiteti non appartiene a Daenerys Targaryen?', 'La Fiamma Scura', 'La non Bruciata', 'Distruttrice di catene', 'Nata dalla Tempesta', ''),
('game-one/ts_spadaJ.jpg', 'game-one/ts_joffrey.jpg', 'Divoratrice di Cuori è stata una delle spade appartenute a?', 'Joffrey Baratheon', 'Brienne di Tarth', 'Tormund Giantsbane', 'Sandor Clegane', ''),
('game-one/ts_copertina.jpg', 'game-one/ts_copertina.jpg', 'Quali di questi non è un titolo di un episodio de Il Trono di Spade?', 'Le tre spade', 'La confessione', 'Aspra Dimora', 'I Figli della Foresta', ''),
('game-one/ts_gNotte.jpg', 'game-one/ts_gNotte.jpg', 'Una di queste parole non fa parte del giuramento dei Guardiani della Notte. Quale?', 'Regni', 'Corona', 'Alba', 'Morte', '«Udite le mie parole, siate testimoni del mio giuramento. Cala la notte, e la mia guardia ha inizio. Non si concluderà fino alla mia morte. Io non avrò moglie, non possiederò terra, non sarò padre di figli. Non porterò corona e non vorrò gloria. Io vivrò al mio posto, e al mio posto morirò. Io sono la spada nelle tenebre. Io sono la sentinella che veglia sulla barriera. Io sono il fuoco che arde contro il freddo, la luce che porta l''alba, il corno che risveglia i dormienti, lo scudo che veglia sui domini degli uomini. Io consacro la mia vita e il mio onore ai Guardiani della Notte. Per questa notte e per tutte le notti a venire.»'),
('game-one/ts_sGClegange.jpg', 'game-one/ts_sGClegange.jpg', 'In un episodio Ser Gregor Clegane uccide il suo cavallo. Come?', 'Lo decapita', 'Gli spara', 'Lo avvelena', 'Lo dà in pasto ai cani', ''),
('game-one/ts_copertina.jpg', 'game-one/ts_gSister.jpg', 'Quale personaggio, senza saperlo, palpeggia la sorella durante un viaggio a cavallo?', 'Theon Greyjoy', 'Tyrion Lannister', 'Viserys Targaryen', 'Jon Snow', ''),
('game-one/ts_rSMoglie.jpg', 'game-one/ts_rSMoglie.jpg', 'Dove si incontrano Robb Stark e Talisa Maegyr?', 'Su un campo di battaglia', 'Ad un matrimonio', 'In un castello', 'In un fiume', ''),
('game-one/ts_dDoreah.jpg', 'game-one/ts_dDoreah.jpg', 'Cosa stavano facendo Daenerys e Doreah, la sua ancella, prima di "cadere in tentazione"?', 'Stavano parlando di cosa significa essere la donna di Khal Drogo', 'Stavano lottando', 'Stavano facendo il bagno', 'Si stavano pettinando i capelli', ''),
('game-one/ts_robert.jpg', 'game-one/ts_robert.jpg', 'Chi o cosa ha ucciso Robert Baratheon?', 'Un cinghiale', 'Lancel Lannister', 'Una malattia', 'Sua moglie', ''),
('game-one/ts_renly.jpg', 'game-one/ts_renly.jpg', 'Come viene ucciso Renly Baratheon?', 'Muore per mano di un assassino soprannaturale evocato da Melisandre', 'Assassinato da sua moglie Margaery', 'In combattimento', 'Giustiziato dal nipote Joffrey, per tradimento', ''),
('game-one/ts_jLannister.jpg', 'game-one/ts_bran.jpg', 'Quale personaggio viene buttato giù da una torre da Jaime Lannister?', 'Bran Stark', 'Catelyn Stark', 'Ser Davos Seaworth', 'Tyrion Lannister', ''),
('game-one/ts_mStannis.jpg', 'game-one/ts_mStannis.jpg', 'Cosa promette Melisandre a Stannis prima che i due facciano l''amore per prima volta?', 'Un figlio', 'Una spada di acciaio di Valyria', 'Un drago', 'Il Trono di Spade', ''),
('game-one/ts_metaLupi.jpg', 'game-one/ts_metaLupi.jpg', 'Chi ha ucciso Lady, il metalupo di Sansa?', 'Ned Stark', 'Sansa stessa', 'Joffrey', 'Ser Ilyn Payne', ''),
('game-one/ts_viserys.jpg', 'game-one/ts_viserys.jpg', 'Come viene ucciso Viserys Targaryen?', 'Viene "incoronato" con dell''oro fuso', 'Assassinato da un predone del deserto', 'Mangiato dai maiali', 'Bruciato a morte da un drago', ''),
('game-one/ts_zio.jpg', 'game-one/ts_zio.jpg', 'Che fine fa Benjen Stark?', 'Non si sa', 'Affoga in mare', 'Muore di freddo', 'Muore di vecchiaia', ''),
('game-one/ts_fratelli.jpg', 'game-one/ts_fratelli_r.jpg', 'Chi viene mandato a combattere i giganti nel tunnel sotto la Barriera?', 'Grenn', 'Jon Snow', 'Janos Slynt', 'Sam', ''),
('game-one/ts_aMastino.jpg', 'game-one/ts_aMastino.jpg', 'Cosa fanno Arya e il Mastino quando arrivano a Nido dell''Aquila?', 'Non ci arrivano mai', 'Arya resta con la zia e il Mastino incassa il riscatto', 'Combattono e vengono uccisi', 'Prendono possesso del castello',''),
('game-one/ts_dreghi.jpg', 'game-one/ts_drogon.jpg', 'Quale drago di Daenerys uccide una bambina a Meereen?', 'Drogon', 'Rhaegal', 'Viserion', 'Balerion', ''),
('game-one/ts_gMartin.jpg', 'game-one/ts_gMartin.jpg', 'Chi ha scritto Le Cronache del Ghiaccio e del Fuoco?', 'George Raymond Richard Martin', 'George Richard Ronald Martin', 'George Robert Reul Martin', 'George Richard Reul Martin', ''),
('game-one/ts_dreghi.jpg', 'game-one/ts_dreghi.jpg', 'Come si chiamano i 3 draghi di Danaerys Targaryen?', 'Viserion, Drogon Rhaegal', 'Drogon, Toth, Xuthal', 'Viserion, Eibon, Dagon', 'Toth, Rhaegal, Dagon', ''),
('game-one/ts_dTargarian.jpg', 'game-one/ts_dTargarian.jpg', 'Con quale di questi epiteti è conosciuta Danaerys Targaryen?', 'Nata dalla Tempesta', 'La Madre del Fuoco', 'Capelli d''Argento', 'Nata dal Fuoco', ''),
('game-one/ts_estranei.jpg', 'game-one/ts_estranei.jpg', 'Chi ha dato vita agli Estranei?', 'I Figli della Foresta', 'I Figli della Notte', 'I Figli del Ghiaccio', 'I Figli dell''Oscurità', ''),
('game-one/ts_copertina.jpg', 'game-one/ts_arrin_r.jpg', 'Qual è il simbolo e il motto della casa Arryn?', 'Un Falco - In Alto quanto l''Onore', 'Un Cervo - Nostra è la Furia', 'Un Pesce - Famiglia, Dovere, Onore', 'Due Torri - Mai nessuno Passerà', ''),
('game-one/ts_copertina.jpg', 'game-one/ts_nheeran.jpg', 'Quale tra questi personaggi famosi ha fatto un cameo nella serie di HBO?', 'Ed Sheeran', 'Mick Jagger', 'Madonna', 'Poul McMyne', ''),
('game-one/ts_bNero.jpg', 'game-one/ts_bNero.jpg', 'Dove si trova la casa del Bianco e del Nero?', 'Braavos', 'Valyria', 'Harlaw', 'Himelia', '');

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
('Quiz', 'lorem ipum lorem ipum lorem ipum lorem ipum lorem ipum lorem ipum1 1', '0', '0', '150'),
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
