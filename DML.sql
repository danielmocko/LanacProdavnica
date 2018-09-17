--Zaposleni
insert into Radnik.Zaposleni(SIF_Z,IME,PREZIME,JMBG,ADRESA,KONTAKT_TELEFON,MAIL,PLATA,RADNO_MESTO,SEF)
values
	(NEXT VALUE FOR  Radnik.SeqZaposleni, 'Daniel','Mocko','1309996800118','Vodna 26/22','069/617-105','danielmocko50@gmail.com',200000,'Direktor',null),

	(NEXT VALUE FOR  Radnik.SeqZaposleni, 'Lidija','Tadic','1234567891002','Masarikova 164','065/333-333','ldijatadic@gmail.com',45000,'Regionalni Direktor',1),
	(NEXT VALUE FOR  Radnik.SeqZaposleni, 'Natasa','Vukic','1234567891003','Kralja petra 16','065/444-444','natasa12@gmail.com',45000,'Regionalni Direktor',1),

	(NEXT VALUE FOR  Radnik.SeqZaposleni, 'Marko','Petrovic','1234567891001','Jovana Ducica 5','065/222-222','markopetrovic123@gmail.com',45000,'Regionalni Menadzer',2),
	(NEXT VALUE FOR  Radnik.SeqZaposleni, 'Jovana', 'Milanovic', '1234567890223', 'Jovanina 2', '937900987', 'jox@gmail.com',65000, 'Regionalni Menadzer',2),
	(NEXT VALUE FOR  Radnik.SeqZaposleni, 'Aleksandra', 'Kitanovic', '1234567890304', 'Sandrina 33', '047263985', 'sakia33@gmail.com', 76000, 'Regionalni Menadzer',3),
	(NEXT VALUE FOR  Radnik.SeqZaposleni, 'Kradisa', 'Kradic', '1234567890407', 'kradisina 2', '487654', 'kradi@gmail.com', 39000, 'Regionalni Menadzer',3),

	(NEXT VALUE FOR  Radnik.SeqZaposleni, 'Petar', 'Petrovic', '1234567890258', 'Petroviceva 34', '065/453-445', 'p@gmail.com', 37000, 'Administrator',4),
	(NEXT VALUE FOR  Radnik.SeqZaposleni, 'Nenad', 'Antonic', '1234567890281', 'Stanka Opsenice 16', '062/4897-654', 'nedzada@krstarica.com', 56000, 'Administrator',4),
	(NEXT VALUE FOR  Radnik.SeqZaposleni, 'Nesa', 'Bridzis', '1234567890275', 'Hajduk Veljkova 17', '062/7697-657', 'bridzis@krstarica.com', 48000, 'Administrator',5),
	(NEXT VALUE FOR  Radnik.SeqZaposleni, 'Sasa', 'Kovacevic', '1234567899275', 'Vuk Brankovica 37', '062/5897-659', 'kovac@krstarica.com', 46000, 'Administrator',5),
	(NEXT VALUE FOR  Radnik.SeqZaposleni, 'Nikolina', 'Djuric', '1234567892275', 'Zeleznicka 66', '065/3297-645', 'nilina456@krstarica.com', 50000, 'Administrator',6),

	(NEXT VALUE FOR  Radnik.SeqZaposleni, 'Igor', 'Stokic', '1234567890410', 'Boska Buhe 3', '065/534-534', 'themasternasty@gmail.com', 36000, 'Aranzer',7),
	(NEXT VALUE FOR  Radnik.SeqZaposleni, 'Mitar', 'Rosandic', '1234567890464', 'Neka ulica 1', '062/234-4234', 'mrosandic@gmail.com', 46000, 'Aranzer',3),
	(NEXT VALUE FOR  Radnik.SeqZaposleni, 'Radisa', 'Kostic', '1234567890418', 'Kosticeva 2', '063/423-423', 'lakosta@gmail.com', 36000, 'Aranzer',7),
	(NEXT VALUE FOR  Radnik.SeqZaposleni, 'Predrag', 'Savic', '1234567865464', 'Zanatlijska 55', '064/236-4884', 'predragkostic@gmail.com', 46000, 'Aranzer',6),
	(NEXT VALUE FOR  Radnik.SeqZaposleni, 'Mita', 'Pantic', '1234567820478', 'Mitino Sokace 26', '063/993-243', 'mitalegenda@gmail.com', 36000, 'Aranzer',3),

	(NEXT VALUE FOR  Radnik.SeqZaposleni, 'Dejan', 'Vuckovic','2806995840288', 'Krajiska 48', '061/2523-099', 'dejan@gmail.com', 50000, 'Menadzer Prodavac',4),
	(NEXT VALUE FOR  Radnik.SeqZaposleni, 'Ozren', 'Kolaic', '1234567890163', 'Beogradski Kej 25', '061/5345-435', 'ozrensky@gmail.com', 16000, 'Menadzer Prodavac',4),
	(NEXT VALUE FOR  Radnik.SeqZaposleni, 'Marko', 'Krivokapic', '1234567890033', 'Sutjeska 34', '064/4324-344', 'marko@gmail.com', 43000, 'Menadzer Prodavac',5),

	(NEXT VALUE FOR  Radnik.SeqZaposleni, 'Igor', 'Sember', '1234567890081', 'Boska Buhe 3', '062/534-534', 'themasternasty@gmail.com', 36000, 'Zamenik Menadzera Prodavca',18),
	(NEXT VALUE FOR  Radnik.SeqZaposleni, 'Miroslav', 'Djuricin', '1234567890250', 'Vuka Karadzica 34', '061/0238-943', 'mikica@gmail.com', 70000, 'Zamenik Menadzera Prodavca',19),
	(NEXT VALUE FOR  Radnik.SeqZaposleni, 'Zivko', 'Petlovic', '1234567890401', 'Bosanska 69', '064/534-543', 'oOoOoOdjesba@gmail.com', 30000, 'Zamenik Menadzera Prodavca',null),
	(NEXT VALUE FOR  Radnik.SeqZaposleni, 'Jusuf', 'Jusufovic','1234567890079', 'Visegradska 33', '061/434-56', 'ju-suf-o@gmail.com', 30000, 'Zamenik Menadzera Prodavca',20),

	(NEXT VALUE FOR  Radnik.SeqZaposleni, 'Marko','Markovic','1234567891000','Zanatlijska 32','065/111-111','markomarkovic@gmail.com',45000,'Prodavac',18),
	(NEXT VALUE FOR  Radnik.SeqZaposleni ,'Petar','Petrovic','1234567891004','Cara Dusana 62','065/555-333','petarperi@gmail.com',45000,'Prodavac',18),
	(NEXT VALUE FOR  Radnik.SeqZaposleni, 'Sasa','Djokovic','1234567891005','Jovana Cvijica 32','065/666-555','nekimejl@gmail.com',45000,'Prodavac',19),
	(NEXT VALUE FOR  Radnik.SeqZaposleni, 'Andjelka','Danilovic','1234567891006','Brace ribnikar 27','065/777-333','ankelaiandrija@gmail.com',45000,'Prodavac',18),
	(NEXT VALUE FOR  Radnik.SeqZaposleni, 'Ana','Pop','1234567891007','Zeleznicka 54','065/888-111','gospodipomiluj@gmail.com',45000,'Prodavac',19),
	(NEXT VALUE FOR  Radnik.SeqZaposleni, 'Ljubica','Markovic','1234567891008','Proleteska 76','065/999-111','markomarkovic@gmail.com',45000,'Prodavac',19),
	(NEXT VALUE FOR  Radnik.SeqZaposleni, 'Goran', 'Kostic', '1234567890351', 'Kosticeva 5', '456785643', 'goki@gmail.com', 31000, 'Prodavac',null),
	(NEXT VALUE FOR  Radnik.SeqZaposleni, 'Radisa', 'Markovic', '1234567890241', 'Slepa ulica 1', '64534543', 'kdaopsd@gmail.com', 23000, 'Prodavac',20),
	(NEXT VALUE FOR  Radnik.SeqZaposleni, 'Milana', 'Milanovic', '1234567890023', 'Milanina 2', '765486456', 'milana@gmail.com', 23000, 'Prodavac',20),
	(NEXT VALUE FOR  Radnik.SeqZaposleni, 'Aleksandra', 'Aleksandrovic', '1234567890336', 'Sandrina 2', '7654876', 'sakia@gmail.com',20000, 'Prodavac',20),
	(NEXT VALUE FOR  Radnik.SeqZaposleni, 'Petar', 'Zamurovic', '1234567890247', 'Petrova 2', '1987654', 'peki@gmail.com', 27000, 'Prodavac',18),

	(NEXT VALUE FOR  Radnik.SeqZaposleni, 'Goran', 'Majkic', '1234567890038', 'Goranova 1', '3876543', 'gok324i@gmail.com', 90000, 'Vozac',null),
	(NEXT VALUE FOR  Radnik.SeqZaposleni, 'Ranko', 'Perovic','1234567890372', 'Slepa ulica 2', '064589472384', 'rankobre@gmail.com', 87000, 'Vozac',null),
	
	(NEXT VALUE FOR  Radnik.SeqZaposleni, 'Marijana', 'Kitic', '1234567890425', 'Marijanina 33', '3396345', 'makija3@gmail.com', 34000, 'Skladistar',null),
	(NEXT VALUE FOR  Radnik.SeqZaposleni, 'Dejan', 'Dejanovic','1234567890436', 'Dejanova 33', '2222837', 'dex33@gmail.com', 29000, 'Skladistar',null),
	(NEXT VALUE FOR  Radnik.SeqZaposleni, 'Bojan', 'Bojanic', '1234567890453', 'Bokijeva 33', '555565654', 'box33@gmail.com', 31000, 'Skladistar',null);
	
--Vozac
insert into Radnik.Vozac(SIF_Z,kategorija,BR_VOZ_DOZVOLE)
values 
	(36,'C1',000047856),
	(37,'D1',000078456);

--Skladiste
insert into Transport_Skladiste_Prodavnica.Skladiste(SIF_SKLADISTA,KONTAKT_TELEFON,LOKACIJA)
values 
	(NEXT VALUE FOR  Transport_Skladiste_Prodavnica.SeqSkladiste,'021/682-456','Sentandrejski put 54, Novi sad'),
	(NEXT VALUE FOR  Transport_Skladiste_Prodavnica.SeqSkladiste,'021/682-457','Konstantina Velikog bb, Beograd'),
	(NEXT VALUE FOR  Transport_Skladiste_Prodavnica.SeqSkladiste,'021/682-458','Partizanska ulica bb, Nis');
	
--Skladistar
insert into Radnik.Skladistar(SIF_Z,KATEGORIJA,SIF_SKLADISTA)
values 
	(38,'F',1),
	(39,'F',2),
	(40,'F',3);

--Region
insert into Proizvod_u_Prodavnici.Region(SIF_REGION,NAZIV)
values 
	(NEXT VALUE FOR Proizvod_u_Prodavnici.SeqRegion,'Sremski okrug'),
	(NEXT VALUE FOR Proizvod_u_Prodavnici.SeqRegion,'Banatski okrug'),
	(NEXT VALUE FOR Proizvod_u_Prodavnici.SeqRegion,'Backi okrug'),
	(NEXT VALUE FOR Proizvod_u_Prodavnici.SeqRegion,'Beogradski okrug'),
	(NEXT VALUE FOR Proizvod_u_Prodavnici.SeqRegion,'Nišavski okrug');

--Grad
insert into Proizvod_u_Prodavnici.Grad(SIF_GRAD,NAZIV,SIF_REGION)
values
	(NEXT VALUE FOR Proizvod_u_Prodavnici.SeqGrad,'Novi Sad',3),
	(NEXT VALUE FOR Proizvod_u_Prodavnici.SeqGrad,'Apatin',3),
	(NEXT VALUE FOR Proizvod_u_Prodavnici.SeqGrad,'Sremska Mitrovica',1),
	(NEXT VALUE FOR Proizvod_u_Prodavnici.SeqGrad,'Ruma',1),
	(NEXT VALUE FOR Proizvod_u_Prodavnici.SeqGrad,'Nis',5),
	(NEXT VALUE FOR Proizvod_u_Prodavnici.SeqGrad,'Beograd',4),
	(NEXT VALUE FOR Proizvod_u_Prodavnici.SeqGrad,'Zrenjanin',2);

--Nadredjeni
insert into Radnik.Nadredjeni(SIF_Z,SIF_REGION,KATEGORIJA)
values 
	(1,null,'B'),
	(2,1,'B'),
	(3,null,'B'),
	(4,2,'B'),
	(5,5,'B'),
	(6,5,'B'),
	(7,4,'B'),
	(8,4,'B'),
	(9,null,'B'),
	(10,3,'B'),
	(11,1,'B'),
	(12,5,'B'),
	(13,3,'B'),
	(14,1,'B'),
	(15,null,'B'),
	(16,5,'B'),
	(17,4,'B');

--Prodavnica
insert into Proizvod_u_Prodavnici.Prodavnica (SIF_PRODAVNICE,ADRESA,KONTAKT_TELEFON,POVRSINA,RADNOVREME_RD,RADNOVREME_SUBOTA,RADNOVREME_NEDELJA,SIF_GRADA,ARANZER,ADMINISTRATOR,MENADZER)
values
	(NEXT VALUE FOR Proizvod_u_Prodavnici.SeqProdavnica,'Mise Dimitrijevica 66','022/122-001',50.2,'8:00-22:00','8:00-20:00','08:00-15:00',1,13,10,6),
	(NEXT VALUE FOR Proizvod_u_Prodavnici.SeqProdavnica,'Kralja petra 6','022/122-002',47,'8:00-22:00','8:00-20:00','08:00-15:00',3,14,11,2),
	(NEXT VALUE FOR Proizvod_u_Prodavnici.SeqProdavnica,'Zeleznicka 84','022/122-003',34,'8:00-22:00','8:00-20:00','08:00-15:00',1,13,10,6),
	(NEXT VALUE FOR Proizvod_u_Prodavnici.SeqProdavnica,'Ive Andrica 66','022/122-004',83,'8:00-22:00','8:00-20:00','08:00-15:00',5,16,12,5),
	(NEXT VALUE FOR Proizvod_u_Prodavnici.SeqProdavnica,'Desanka Maksimovic 39','022/122-005',61,'8:00-22:00','8:00-20:00','08:00-15:00',5,16,12,5),
	(NEXT VALUE FOR Proizvod_u_Prodavnici.SeqProdavnica,'Ive Andrica 66','022/122-004',83,'8:00-22:00','8:00-20:00','08:00-15:00',6,8,17,7);

--Prodavac
insert into Radnik.Prodavac (SIF_Z,SIF_PRODAVNICE,BR_KARTICE)
values
	(18,1,110010),
	(19,2,110011),
	(20,4,110012),

	(21,1,110013),
	(22,2,110014),
	(23,3,110015),
	(24,4,110016),

	(25,1,110017),
	(26,1,110018),
	(27,2,110019),
	(29,2,110020),
	(30,3,110021),
	(31,3,110022),
	(32,4,110023),
	(33,4,110024),
	(34,5,110025),
	(35,5,110026);

--Proizvod
insert into Proizvod_u_Prodavnici.Proizvod(SIF_PROIZVODA,NAZIV_PROIZVODA,OPIS,OSNOVNA_CENA,PRODAJNA_CENA,KOMERCIJALNA_CENA,KATEGORIJA,VRSTA)
	values 
	(NEXT VALUE FOR Proizvod_u_Prodavnici.SeqProizvod, 'LED Monitor', 'Jos malo pa nestalo', 13000, 16800, 20000, 'Tehnika', 'Monitor'),
	(NEXT VALUE FOR Proizvod_u_Prodavnici.SeqProizvod, 'GTX 1080ti', 'Najjaca graficka karta na trzistu', 99000, 110000, 125000, 'Tehnika', 'Graficke karte'),
	(NEXT VALUE FOR Proizvod_u_Prodavnici.SeqProizvod, 'GTX 1070ti', 'Gamerska graficka', 69000, 80000, 95000, 'Tehnika', 'Graficke karte'),
	(NEXT VALUE FOR Proizvod_u_Prodavnici.SeqProizvod, 'GTX 950m', 'Solidna graficka karta', 6500, 8100, 8900, 'Tehnika', 'Graficke karte'),
	(NEXT VALUE FOR Proizvod_u_Prodavnici.SeqProizvod, 'Intel i5 6300hq', 'Solidan procesor', 16000, 17800, 19700, 'Tehnika', 'Procesori'),
	(NEXT VALUE FOR Proizvod_u_Prodavnici.SeqProizvod, 'Intel i7 7700hq', 'Solidan procesor dosta', 17000, 18800, 19700, 'Tehnika', 'Procesori'),
	(NEXT VALUE FOR Proizvod_u_Prodavnici.SeqProizvod, 'AMD Ryzen 7', 'Dobar gamerski AMD procesor', 78000, 83000, 88000, 'Tehnika', 'Procesori'),
	(NEXT VALUE FOR Proizvod_u_Prodavnici.SeqProizvod, 'Frizider XZIY2', 'Veliki frizider', 6500, 7800, 8000, 'Bela tehnika', 'Frizideri'),
	(NEXT VALUE FOR Proizvod_u_Prodavnici.SeqProizvod, 'Zamrzivac', 'Ides u djavola', 12000, 13400, 14300, 'Bela tehnika', 'Zamrzivaci'),
	(NEXT VALUE FOR Proizvod_u_Prodavnici.SeqProizvod, 'ASUS ROG MATICNA', 'wow', 16500, 17400, 19300, 'Tehnika', 'Maticne Ploce'),
	(NEXT VALUE FOR Proizvod_u_Prodavnici.SeqProizvod, 'Lenovo Legion', 'Gamerski laptop', 120000, 123000, 126000, 'Tehnika', 'Laptopovi'),
	(NEXT VALUE FOR Proizvod_u_Prodavnici.SeqProizvod, 'ASUS ROG', 'Asusov gamerski laptop', 134000, 139000, 143000, 'Tehnika', 'Laptopovi'),
	(NEXT VALUE FOR Proizvod_u_Prodavnici.SeqProizvod, 'HP Omen', 'wow', 100000, 103000, 104340, 'Tehnika', 'Laptopovi'),
	(NEXT VALUE FOR Proizvod_u_Prodavnici.SeqProizvod, 'LCD Monitor', 'Dobar neki jako ono', 6500, 7800, 8000, 'Tehnika', 'Monitor');

--Akcija
insert into  Proizvod_u_Prodavnici.Akcija(SIF_AKCIJE,DATUM_POCETKA,DATUM_ZAVRSETKA,PROCENAT)
values 
	(NEXT VALUE FOR Proizvod_u_Prodavnici.SeqAkcija, '21-JAN-18', '22-JAN-18', 7),
	(NEXT VALUE FOR Proizvod_u_Prodavnici.SeqAkcija, '1-DEC-18', '21-JAN-19', 30),
	(NEXT VALUE FOR Proizvod_u_Prodavnici.SeqAkcija, '2-JUN-18', '21-NOV-18', 21),
	(NEXT VALUE FOR Proizvod_u_Prodavnici.SeqAkcija, '21-JAN-18', '21-JAN-18', 9),
	(NEXT VALUE FOR Proizvod_u_Prodavnici.SeqAkcija, '28-JAN-18', '21-FEB-18', 50),
	(NEXT VALUE FOR Proizvod_u_Prodavnici.SeqAkcija, '9-SEP-18', '9-SEP-18', 50);

--ProizAkc
insert into Proizvod_u_Prodavnici.ProizAkc(SIF_AKCIJE,SIF_PROIZVODA,CENA)
	values
	(1, 1, 5000),
	(2, 3, 9000),
	(3, 5, 80000),
	(4, 10, 4000),
	(5, 12, 8000);

--Magacin
insert into Proizvod_u_Prodavnici.Magacin(SIF_MAGACINA,SIF_PRODAVNICE)
values 
	(NEXT VALUE FOR Proizvod_u_Prodavnici.SeqMagacin,1),
	(NEXT VALUE FOR Proizvod_u_Prodavnici.SeqMagacin,2),
	(NEXT VALUE FOR Proizvod_u_Prodavnici.SeqMagacin,3),
	(NEXT VALUE FOR Proizvod_u_Prodavnici.SeqMagacin,4),
	(NEXT VALUE FOR Proizvod_u_Prodavnici.SeqMagacin,5),
	(NEXT VALUE FOR Proizvod_u_Prodavnici.SeqMagacin,6);

--ProizMag
insert into Proizvod_u_Prodavnici.ProizMag(SIF_MAGACINA,SIF_PRODAVNICE,SIF_PROIZVODA,KOLICINA)
values 
	(1,1,1,5),
	(1,1,2,15),
	(1,1,4,7),
	(1,1,6,3),
	(1,1,8,1),
	(1,1,9,5),
	(1,1,11,8),
	(2,2,3,0),
	(2,2,4,6),
	(2,2,5,2),
	(2,2,6,12),
	(2,2,7,15),
	(2,2,8,7),
	(2,2,9,3),
	(2,2,10,2),
	(3,3,1,5),
	(3,3,2,4),
	(3,3,8,6),
	(3,3,7,8),
	(3,3,12,4),
	(3,3,13,2),
	(4,4,4,3),
	(4,4,7,1),
	(4,4,12,2),
	(4,4,11,6),
	(5,5,11,6),
	(5,5,6,3),
	(5,5,1,7),
	(5,5,12,4),
	(6,6,1,4);

--ProizProd
insert into Proizvod_u_Prodavnici.ProizProd(SIF_PRODAVNICE,SIF_PROIZVODA,KOLICINA)
values
	(1,1,1),
	(1,4,1),
	(1,5,1),
	(1,6,2),
	(1,8,1),
	(1,10,1),
	(2,1,1),
	(2,4,1),
	(2,8,1),
	(2,13,1),
	(3,1,1),
	(3,7,1),
	(3,11,1),
	(3,12,1),
	(3,13,1),
	(4,3,1),
	(4,4,1),
	(4,5,1),
	(4,6,1),
	(4,8,1),
	(5,1,1),
	(5,2,1),
	(5,3,1),
	(5,9,1),
	(5,12,1),
	(6,3,1),
	(6,4,1),
	(6,5,1),
	(6,6,1);

--Slika
insert into Proizvod_u_Prodavnici.Slika(SIF_SLIKA,PUTANJA_FAJLA)
values 
(NEXT VALUE FOR Proizvod_u_Prodavnici.SeqSlika, 'http://hhffhsdifhsdf8489f98hrfh8h9sdf'),
(NEXT VALUE FOR Proizvod_u_Prodavnici.SeqSlika, 'http://dostajebilof'),
(NEXT VALUE FOR Proizvod_u_Prodavnici.SeqSlika, 'http://mnogoslikaima'),
(NEXT VALUE FOR Proizvod_u_Prodavnici.SeqSlika, 'http://sjuuu'),
(NEXT VALUE FOR Proizvod_u_Prodavnici.SeqSlika, 'http://ualajaoo'),
(NEXT VALUE FOR Proizvod_u_Prodavnici.SeqSlika, 'http://dosadnojeovobas'),
(NEXT VALUE FOR Proizvod_u_Prodavnici.SeqSlika, 'http://smoriosamsevec'),
(NEXT VALUE FOR Proizvod_u_Prodavnici.SeqSlika, 'http://heheslika'),
(NEXT VALUE FOR Proizvod_u_Prodavnici.SeqSlika, 'http://evoneznambogami'),
(NEXT VALUE FOR Proizvod_u_Prodavnici.SeqSlika, 'http://nekatamoslikaproizvoda'),
(NEXT VALUE FOR Proizvod_u_Prodavnici.SeqSlika, 'http://slikaslicica');

--Predstavlja
insert into Proizvod_u_Prodavnici.Predstavlja(SIF_SLIKA, SIF_PROIZVODA)
values 
(1, 1),
(2, 1),
(3, 2),
(4, 2),
(5, 3),
(6, 7),
(7,6),
(8,4),
(9,11),
(10,12),
(11,12);

--Prevozno_Sredstvo
insert into Prevoz.Prevozno_Sredstvo(SIF_VOZILA,MODEL,BR_REG_TABLICE,DATUM_ISTEKA_REG,DATUM_ZADUZIVANJA,DATUM_RAZDUZIVANJA)
values
(NEXT VALUE FOR Prevoz.SeqPrevoznoSredstvo, 'Limuzina', 'NS-145-32-1', '31-DEC-18', '23-JAN-17', '30-JUN-19'),
(NEXT VALUE FOR Prevoz.SeqPrevoznoSredstvo, 'Kamion', 'NS-423-54-6', '1-JUN-18', '2-JAN-16', '1-NOV-19'),
(NEXT VALUE FOR Prevoz.SeqPrevoznoSredstvo, 'Kombi', 'NS-432-51-3', '3-FEB-18', '3-OCT-17', '21-MAR-19'),
(NEXT VALUE FOR Prevoz.SeqPrevoznoSredstvo, 'Kupe', 'KI-427-54-7', '22-JUN-19', '2-MAY-16', '1-NOV-19'),
(NEXT VALUE FOR Prevoz.SeqPrevoznoSredstvo, 'Hecbek', 'KI-413-56-6', '4-NOV-18', '2-JUN-18', '1-DEC-19'),
(NEXT VALUE FOR Prevoz.SeqPrevoznoSredstvo, 'Kupe', 'KI-424-54-7', '22-JUN-19', '2-MAY-16', '1-NOV-19'),
(NEXT VALUE FOR Prevoz.SeqPrevoznoSredstvo, 'Hecbek', 'KI-413-54-6', '4-NOV-18', '2-JUN-18', '1-DEC-19'),
(NEXT VALUE FOR Prevoz.SeqPrevoznoSredstvo, 'Kupe', 'KI-424-34-7', '22-JUN-19', '2-MAY-16', '1-NOV-19'),
(NEXT VALUE FOR Prevoz.SeqPrevoznoSredstvo, 'Hecbek', 'KI-413-36-6', '4-NOV-18', '2-JUN-18', '1-DEC-19');

--Teretno_Vozilo
insert into Prevoz.Teretno_Vozilo(SIF_VOZILA,MARKA,VOZAC)
values
(3,'Volkswagen',36),
(2,'Volvo',37);

--Civilno_Vozilo
insert into Prevoz.Civilno_Vozilo(SIF_VOZILA,SIF_Z)
values
	(1,1),
	(4,2),
	(5,3),
	(6,4),
	(7,5),
	(8,8),
	(9,9);

--OnlineProizvod
insert into Online_Porudzbina.OnlineProizvod(SIF_ONLINE_PROIZVODA,SIF_PROIZVODA,DOSTUPNO,ONLINE_CENA)
values
(NEXT VALUE FOR Online_Porudzbina.SeqOnlineProizvod, 1, 'DA', 4600),
(NEXT VALUE FOR Online_Porudzbina.SeqOnlineProizvod, 2, 'NE', 9600),
(NEXT VALUE FOR Online_Porudzbina.SeqOnlineProizvod, 3, 'DA', 90000),
(NEXT VALUE FOR Online_Porudzbina.SeqOnlineProizvod, 4, 'NE', 4600),
(NEXT VALUE FOR Online_Porudzbina.SeqOnlineProizvod, 12, 'DA', 8900),
(NEXT VALUE FOR Online_Porudzbina.SeqOnlineProizvod, 6, 'DA', 14100),
(NEXT VALUE FOR Online_Porudzbina.SeqOnlineProizvod, 7, 'NE', 4600),
(NEXT VALUE FOR Online_Porudzbina.SeqOnlineProizvod, 8, 'DA', 9600),
(NEXT VALUE FOR Online_Porudzbina.SeqOnlineProizvod, 9, 'DA', 90000),
(NEXT VALUE FOR Online_Porudzbina.SeqOnlineProizvod, 13, 'DA', 14100);

--Online_Kupac
insert into Online_Porudzbina.Online_Kupac(SIF_KUPCA,IME,PREZIME,KONTAKT,EMAIL)
values 
	(NEXT VALUE FOR Online_Porudzbina.SeqOnlineKupac,'Petar','Petrovic','069/152-3756','petarp@gmail.com'),
	(NEXT VALUE FOR Online_Porudzbina.SeqOnlineKupac,'Marko','Markovic','069/162-3756','markomark34@gmail.com'),
	(NEXT VALUE FOR Online_Porudzbina.SeqOnlineKupac,'Natasa','Colic','069/112-3756','natasica99@gmail.com'),
	(NEXT VALUE FOR Online_Porudzbina.SeqOnlineKupac,'Milica','Milic','069/172-3756','micabrat74@gmail.com'),
	(NEXT VALUE FOR Online_Porudzbina.SeqOnlineKupac,'Dejana','Sasisc','069/152-376','dekicarmozda@gmail.com'),
	(NEXT VALUE FOR Online_Porudzbina.SeqOnlineKupac,'Dajman','Vasic','069/179-3756','gdemijezelenko@gmail.com');

--Porudzbenica
insert into Online_Porudzbina.Porudzbenica(SIF_PORUDZBENICE,SIF_ONLINE_PROIZVODA,KOLICINA,AKTIVNA,SIF_PRODAVNICE,SIF_KUPCA)
values 
	(NEXT VALUE FOR Online_Porudzbina.SeqPorudzbenica,2,1,'DA',2,1),
	(NEXT VALUE FOR Online_Porudzbina.SeqPorudzbenica,4,1,'DA',3,2),
	(NEXT VALUE FOR Online_Porudzbina.SeqPorudzbenica,2,2,'DA',5,3),
	(NEXT VALUE FOR Online_Porudzbina.SeqPorudzbenica,3,1,'NE',2,4),
	(NEXT VALUE FOR Online_Porudzbina.SeqPorudzbenica,1,1,'NE',2,5),
	(NEXT VALUE FOR Online_Porudzbina.SeqPorudzbenica,1,1,'DA',1,6);
	
--Plan
insert into Izrada_Plana."Plan"(SIF_PLANA,SIF_KREATORA,DATUM,NEDELJA,DAN_U_NEDELJI,OPIS_PLANA)
values 
	(NEXT VALUE FOR Izrada_Plana.SeqPlan, 2,'2-JAN-17',DATEPART(WEEK,'2-JAN-17'),DATENAME(WEEKDAY,'2-JAN-17'),'Otrezniti se'),
	(NEXT VALUE FOR Izrada_Plana.SeqPlan, 4,'2-JAN-17',DATEPART(WEEK,'2-JAN-17'),DATENAME(WEEKDAY,'2-JAN-17'),'Otrezniti se'),
	(NEXT VALUE FOR Izrada_Plana.SeqPlan, 5,'2-JAN-17',DATEPART(WEEK,'2-JAN-17'),DATENAME(WEEKDAY,'2-JAN-17'),'Otrezniti se'),
	(NEXT VALUE FOR Izrada_Plana.SeqPlan, 9,'2-JAN-17',DATEPART(WEEK,'2-JAN-17'),DATENAME(WEEKDAY,'2-JAN-17'),'Otrezniti se'),
	(NEXT VALUE FOR Izrada_Plana.SeqPlan, 10,'2-JAN-17',DATEPART(WEEK,'2-JAN-17'),DATENAME(WEEKDAY,'2-JAN-17'),'Otrezniti se'),
	(NEXT VALUE FOR Izrada_Plana.SeqPlan, 14,'2-JAN-17',DATEPART(WEEK,'2-JAN-17'),DATENAME(WEEKDAY,'2-JAN-17'),'Otrezniti se'),
	(NEXT VALUE FOR Izrada_Plana.SeqPlan, 15,'2-JAN-17',DATEPART(WEEK,'2-JAN-17'),DATENAME(WEEKDAY,'2-JAN-17'),'Otrezniti se'),

	(NEXT VALUE FOR Izrada_Plana.SeqPlan, 2,'3-JAN-17',DATEPART(WEEK,'3-JAN-17'),DATENAME(WEEKDAY,'3-JAN-17'),'Otrezniti se od sinoc'),
	(NEXT VALUE FOR Izrada_Plana.SeqPlan, 4,'3-JAN-17',DATEPART(WEEK,'3-JAN-17'),DATENAME(WEEKDAY,'3-JAN-17'),'Otrezniti se od sinoc'),
	(NEXT VALUE FOR Izrada_Plana.SeqPlan, 5,'3-JAN-17',DATEPART(WEEK,'3-JAN-17'),DATENAME(WEEKDAY,'3-JAN-17'),'Otrezniti se od sinoc'),
	(NEXT VALUE FOR Izrada_Plana.SeqPlan, 9,'3-JAN-17',DATEPART(WEEK,'3-JAN-17'),DATENAME(WEEKDAY,'3-JAN-17'),'Otrezniti se od sinoc'),
	(NEXT VALUE FOR Izrada_Plana.SeqPlan, 10,'3-JAN-17',DATEPART(WEEK,'3-JAN-17'),DATENAME(WEEKDAY,'3-JAN-17'),'Otrezniti se od sinoc'),
	(NEXT VALUE FOR Izrada_Plana.SeqPlan, 14,'3-JAN-17',DATEPART(WEEK,'3-JAN-17'),DATENAME(WEEKDAY,'3-JAN-17'),'Otrezniti se od sinoc'),
	(NEXT VALUE FOR Izrada_Plana.SeqPlan, 15,'3-JAN-17',DATEPART(WEEK,'3-JAN-17'),DATENAME(WEEKDAY,'3-JAN-17'),'Otrezniti se od sinoc'),

	(NEXT VALUE FOR Izrada_Plana.SeqPlan,2,'4-JAN-17',DATEPART(WEEK,'4-JAN-17'),DATENAME(WEEKDAY,'4-JAN-17'),'Raditi nesto'),
	(NEXT VALUE FOR Izrada_Plana.SeqPlan,4,'4-JAN-17',DATEPART(WEEK,'4-JAN-17'),DATENAME(WEEKDAY,'4-JAN-17'),'Raditi nesto'),
	(NEXT VALUE FOR Izrada_Plana.SeqPlan,5,'4-JAN-17',DATEPART(WEEK,'4-JAN-17'),DATENAME(WEEKDAY,'4-JAN-17'),'Raditi nesto'),
	(NEXT VALUE FOR Izrada_Plana.SeqPlan,9,'4-JAN-17',DATEPART(WEEK,'4-JAN-17'),DATENAME(WEEKDAY,'4-JAN-17'),'Raditi nesto'),
	(NEXT VALUE FOR Izrada_Plana.SeqPlan,10,'4-JAN-17',DATEPART(WEEK,'4-JAN-17'),DATENAME(WEEKDAY,'4-JAN-17'),'Raditi nesto'),
	(NEXT VALUE FOR Izrada_Plana.SeqPlan,14,'4-JAN-17',DATEPART(WEEK,'4-JAN-17'),DATENAME(WEEKDAY,'4-JAN-17'),'Raditi nesto'),
	(NEXT VALUE FOR Izrada_Plana.SeqPlan,15,'4-JAN-17',DATEPART(WEEK,'4-JAN-17'),DATENAME(WEEKDAY,'4-JAN-17'),'Raditi nesto'),

	(NEXT VALUE FOR Izrada_Plana.SeqPlan,2,'5-JAN-17',DATEPART(WEEK,'5-JAN-17'),DATENAME(WEEKDAY,'5-JAN-17'),'Priprema pred badnji dan'),
	(NEXT VALUE FOR Izrada_Plana.SeqPlan,4,'5-JAN-17',DATEPART(WEEK,'5-JAN-17'),DATENAME(WEEKDAY,'5-JAN-17'),'Priprema pred badnji dan'),
	(NEXT VALUE FOR Izrada_Plana.SeqPlan,5,'5-JAN-17',DATEPART(WEEK,'5-JAN-17'),DATENAME(WEEKDAY,'5-JAN-17'),'Priprema pred badnji dan'),
	(NEXT VALUE FOR Izrada_Plana.SeqPlan,9,'5-JAN-17',DATEPART(WEEK,'5-JAN-17'),DATENAME(WEEKDAY,'5-JAN-17'),'Priprema pred badnji dan'),
	(NEXT VALUE FOR Izrada_Plana.SeqPlan,10,'5-JAN-17',DATEPART(WEEK,'5-JAN-17'),DATENAME(WEEKDAY,'5-JAN-17'),'Priprema pred badnji dan'),
	(NEXT VALUE FOR Izrada_Plana.SeqPlan,14,'5-JAN-17',DATEPART(WEEK,'5-JAN-17'),DATENAME(WEEKDAY,'5-JAN-17'),'Priprema pred badnji dan'),
	(NEXT VALUE FOR Izrada_Plana.SeqPlan,15,'5-JAN-17',DATEPART(WEEK,'5-JAN-17'),DATENAME(WEEKDAY,'5-JAN-17'),'Priprema pred badnji dan');

--Izvestaj
insert into Izrada_Plana.Izvestaj(SIF_IZVESTAJ,SIF_PLANA,DATUM,NEDELJA,DAN_U_NEDELJI,OPIS_IZVESTAJA)
values 
	(NEXT VALUE FOR Izrada_Plana.SeqIzvestaj,1,'2-JAN-17',DATEPART(WEEK,'2-JAN-17'),DATENAME(WEEKDAY,'2-JAN-17'),'Svi smo trezni :)'),
	(NEXT VALUE FOR Izrada_Plana.SeqIzvestaj,2,'2-JAN-17',DATEPART(WEEK,'2-JAN-17'),DATENAME(WEEKDAY,'2-JAN-17'),'Svi smo trezni :)'),
	(NEXT VALUE FOR Izrada_Plana.SeqIzvestaj,3,'2-JAN-17',DATEPART(WEEK,'2-JAN-17'),DATENAME(WEEKDAY,'2-JAN-17'),'Svi smo trezni :)'),
	(NEXT VALUE FOR Izrada_Plana.SeqIzvestaj,4,'2-JAN-17',DATEPART(WEEK,'2-JAN-17'),DATENAME(WEEKDAY,'2-JAN-17'),'Svi smo trezni :)'),
	(NEXT VALUE FOR Izrada_Plana.SeqIzvestaj,5,'2-JAN-17',DATEPART(WEEK,'2-JAN-17'),DATENAME(WEEKDAY,'2-JAN-17'),'Svi smo trezni :)'),
	(NEXT VALUE FOR Izrada_Plana.SeqIzvestaj,6,'2-JAN-17',DATEPART(WEEK,'2-JAN-17'),DATENAME(WEEKDAY,'2-JAN-17'),'Svi smo trezni :)'),
	(NEXT VALUE FOR Izrada_Plana.SeqIzvestaj,7,'2-JAN-17',DATEPART(WEEK,'2-JAN-17'),DATENAME(WEEKDAY,'2-JAN-17'),'Svi smo trezni :)'),

	(NEXT VALUE FOR Izrada_Plana.SeqIzvestaj,8,'3-JAN-17',DATEPART(WEEK,'3-JAN-17'),DATENAME(WEEKDAY,'3-JAN-17'),'E sad smo stvarno trezni :D'),
	(NEXT VALUE FOR Izrada_Plana.SeqIzvestaj,9,'3-JAN-17',DATEPART(WEEK,'3-JAN-17'),DATENAME(WEEKDAY,'3-JAN-17'),'E sad smo stvarno trezni :D'),
	(NEXT VALUE FOR Izrada_Plana.SeqIzvestaj,10,'3-JAN-17',DATEPART(WEEK,'3-JAN-17'),DATENAME(WEEKDAY,'3-JAN-17'),'E sad smo stvarno trezni :D'),
	(NEXT VALUE FOR Izrada_Plana.SeqIzvestaj,11,'3-JAN-17',DATEPART(WEEK,'3-JAN-17'),DATENAME(WEEKDAY,'3-JAN-17'),'E sad smo stvarno trezni :D'),
	(NEXT VALUE FOR Izrada_Plana.SeqIzvestaj,12,'3-JAN-17',DATEPART(WEEK,'3-JAN-17'),DATENAME(WEEKDAY,'3-JAN-17'),'E sad smo stvarno trezni :D'),
	(NEXT VALUE FOR Izrada_Plana.SeqIzvestaj,13,'3-JAN-17',DATEPART(WEEK,'3-JAN-17'),DATENAME(WEEKDAY,'3-JAN-17'),'E sad smo stvarno trezni :D'),
	(NEXT VALUE FOR Izrada_Plana.SeqIzvestaj,14,'3-JAN-17',DATEPART(WEEK,'3-JAN-17'),DATENAME(WEEKDAY,'3-JAN-17'),'E sad smo stvarno trezni :D'),

	(NEXT VALUE FOR Izrada_Plana.SeqIzvestaj,15,'4-JAN-17',DATEPART(WEEK,'4-JAN-17'),DATENAME(WEEKDAY,'4-JAN-17'),'Uradili nista'),
	(NEXT VALUE FOR Izrada_Plana.SeqIzvestaj,16,'4-JAN-17',DATEPART(WEEK,'4-JAN-17'),DATENAME(WEEKDAY,'4-JAN-17'),'Uradili nista'),
	(NEXT VALUE FOR Izrada_Plana.SeqIzvestaj,17,'4-JAN-17',DATEPART(WEEK,'4-JAN-17'),DATENAME(WEEKDAY,'4-JAN-17'),'Uradili nista'),
	(NEXT VALUE FOR Izrada_Plana.SeqIzvestaj,18,'4-JAN-17',DATEPART(WEEK,'4-JAN-17'),DATENAME(WEEKDAY,'4-JAN-17'),'Uradili nista'),
	(NEXT VALUE FOR Izrada_Plana.SeqIzvestaj,19,'4-JAN-17',DATEPART(WEEK,'4-JAN-17'),DATENAME(WEEKDAY,'4-JAN-17'),'Uradili nista'),
	(NEXT VALUE FOR Izrada_Plana.SeqIzvestaj,20,'4-JAN-17',DATEPART(WEEK,'4-JAN-17'),DATENAME(WEEKDAY,'4-JAN-17'),'Uradili nista'),
	(NEXT VALUE FOR Izrada_Plana.SeqIzvestaj,21,'4-JAN-17',DATEPART(WEEK,'4-JAN-17'),DATENAME(WEEKDAY,'4-JAN-17'),'Uradili nista'),
	
	(NEXT VALUE FOR Izrada_Plana.SeqIzvestaj,22,'5-JAN-17',DATEPART(WEEK,'5-JAN-17'),DATENAME(WEEKDAY,'5-JAN-17'),'Dogovorili se kad cemo po badnjak, u 5:00 ustajanje'),
	(NEXT VALUE FOR Izrada_Plana.SeqIzvestaj,23,'5-JAN-17',DATEPART(WEEK,'5-JAN-17'),DATENAME(WEEKDAY,'5-JAN-17'),'Dogovorili se kad cemo po badnjak, u 5:00 ustajanje'),
	(NEXT VALUE FOR Izrada_Plana.SeqIzvestaj,24,'5-JAN-17',DATEPART(WEEK,'5-JAN-17'),DATENAME(WEEKDAY,'5-JAN-17'),'Dogovorili se kad cemo po badnjak, u 5:00 ustajanje'),
	(NEXT VALUE FOR Izrada_Plana.SeqIzvestaj,25,'5-JAN-17',DATEPART(WEEK,'5-JAN-17'),DATENAME(WEEKDAY,'5-JAN-17'),'Dogovorili se kad cemo po badnjak, u 5:00 ustajanje'),
	(NEXT VALUE FOR Izrada_Plana.SeqIzvestaj,26,'5-JAN-17',DATEPART(WEEK,'5-JAN-17'),DATENAME(WEEKDAY,'5-JAN-17'),'Dogovorili se kad cemo po badnjak, u 5:00 ustajanje'),
	(NEXT VALUE FOR Izrada_Plana.SeqIzvestaj,27,'5-JAN-17',DATEPART(WEEK,'5-JAN-17'),DATENAME(WEEKDAY,'5-JAN-17'),'Dogovorili se kad cemo po badnjak, u 5:00 ustajanje'),
	(NEXT VALUE FOR Izrada_Plana.SeqIzvestaj,28,'5-JAN-17',DATEPART(WEEK,'5-JAN-17'),DATENAME(WEEKDAY,'5-JAN-17'),'Dogovorili se kad cemo po badnjak, u 5:00 ustajanje');

--Zahtev
insert into Transpor_Prodavnica_Prodavnica.Zahtev(SIF_ZAHTEVA,SIF_Z,SIF_PRODAVNICE,SIF_PROIZVODA,KOLICINA,DATUM_KREIRANJA,AKTIVAN)
values 
	(NEXT VALUE FOR Transpor_Prodavnica_Prodavnica.SeqZahtev,27,3,11,1,'3-MAY-17','DA'),
	(NEXT VALUE FOR Transpor_Prodavnica_Prodavnica.SeqZahtev,27,4,3,1,'3-MAY-17','DA'),
	(NEXT VALUE FOR Transpor_Prodavnica_Prodavnica.SeqZahtev,27,5,12,1,'3-MAY-17','DA'),
	(NEXT VALUE FOR Transpor_Prodavnica_Prodavnica.SeqZahtev,29,1,8,1,'14-MAY-17','DA'),
	(NEXT VALUE FOR Transpor_Prodavnica_Prodavnica.SeqZahtev,29,1,1,4,'14-MAY-17','NE'),
	(NEXT VALUE FOR Transpor_Prodavnica_Prodavnica.SeqZahtev,29,5,9,1,'14-MAY-17','DA'),
	(NEXT VALUE FOR Transpor_Prodavnica_Prodavnica.SeqZahtev,26,2,4,3,'14-MAY-17','NE'),
	(NEXT VALUE FOR Transpor_Prodavnica_Prodavnica.SeqZahtev,32,2,4,8,'22-MAY-17','NE'),
	(NEXT VALUE FOR Transpor_Prodavnica_Prodavnica.SeqZahtev,32,3,7,1,'22-MAY-17','DA'),
	(NEXT VALUE FOR Transpor_Prodavnica_Prodavnica.SeqZahtev,32,1,10,2,'22-MAY-17','NE');

--ObradjujeIzProdavnice
insert into Transpor_Prodavnica_Prodavnica.ObradjujeIzProdavnice(SIF_ZAHTEVA,SIF_Z,DATUM_OBRADE)
values
	(5,26,'15-MAY-17'),
	(7,27,'15-MAY-17'),
	(8,29,'23-MAY-17'),
	(10,21,'23-MAY-17');

--TransportujeIzProdavnice
insert into Transpor_Prodavnica_Prodavnica.TransportujeIzProdavnice(SIF_ZAHTEVA,SIF_Z,SIF_PRODAVNICE,STATUS_ISPORUKE)
values 
	(5,36,1,'ISPORUCEN'),
	(7,36,2,'ISPORUCEN'),
	(8,37,2,'U TRANSPORTU'),
	(10,37,1,'U TRANSPORTU');

--SkladisteStanje
insert into Transport_Skladiste_Prodavnica.SkladisteStanje(SIF_SKLADISTA,SIF_PROIZVODA,KOLICINA)
values 
	(1,1,4),
	(1,2,19),
	(1,3,6),
	(1,4,4),
	(1,5,0),
	(1,6,8),
	(1,7,4),
	(1,8,23),
	(1,9,4),
	(1,10,6),
	(1,11,9),
	(1,12,7),
	(1,13,15),

	(2,1,4),
	(2,2,19),
	(2,3,6),
	(2,4,4),
	(2,5,0),
	(2,6,8),
	(2,7,4),
	(2,8,23),
	(2,9,4),
	(2,10,6),
	(2,11,9),
	(2,12,7),
	(2,13,15),
	
	(3,1,4),
	(3,2,19),
	(3,3,6),
	(3,4,4),
	(3,5,0),
	(3,6,8),
	(3,7,4),
	(3,8,23),
	(3,9,4),
	(3,10,6),
	(3,11,9),
	(3,12,7),
	(3,13,15);

--Porudzbina
insert into Transport_Skladiste_Prodavnica.Porudzbina(SIF_PORUDZBINE,SIF_SKLADISTA,SIF_PROIZVODA,SIF_Z,DATUM,AKTIVNA)
values
	(NEXT VALUE FOR Transport_Skladiste_Prodavnica.SeqPorudzbina,1,5,30,'24-JUN-17','DA'),
	(NEXT VALUE FOR Transport_Skladiste_Prodavnica.SeqPorudzbina,1,9,33,'14-JUN-17','DA'),
	(NEXT VALUE FOR Transport_Skladiste_Prodavnica.SeqPorudzbina,1,11,32,'14-JUN-17','NE'),
	(NEXT VALUE FOR Transport_Skladiste_Prodavnica.SeqPorudzbina,1,13,34,'24-JUN-17','NE'),

	(NEXT VALUE FOR Transport_Skladiste_Prodavnica.SeqPorudzbina,2,2,26,'24-JUN-17','DA'),
	(NEXT VALUE FOR Transport_Skladiste_Prodavnica.SeqPorudzbina,2,8,31,'16-JUN-17','DA'),
	(NEXT VALUE FOR Transport_Skladiste_Prodavnica.SeqPorudzbina,2,12,29,'19-JUN-17','NE'),
	(NEXT VALUE FOR Transport_Skladiste_Prodavnica.SeqPorudzbina,2,13,33,'23-JUN-17','NE'),

	(NEXT VALUE FOR Transport_Skladiste_Prodavnica.SeqPorudzbina,3,3,26,'24-JUN-17','DA'),
	(NEXT VALUE FOR Transport_Skladiste_Prodavnica.SeqPorudzbina,3,9,25,'19-JUN-17','DA'),
	(NEXT VALUE FOR Transport_Skladiste_Prodavnica.SeqPorudzbina,3,1,34,'18-JUN-17','NE'),
	(NEXT VALUE FOR Transport_Skladiste_Prodavnica.SeqPorudzbina,3,13,30,'24-JUN-17','NE');

--ObradjujeIzSkladista
insert into Transport_Skladiste_Prodavnica.ObradjujeIzSkladista(SIF_PORUDZBINE,SIF_Z,VREME_OBRADE)
values 
	(3,38,'25-JUN-17'),
	(4,38,'15-JUN-17'),
	(7,39,'25-JUN-17'),
	(8,39,'17-JUN-17'),
	(11,40,'25-JUN-17'),
	(12,40,'20-JUN-17');

--TransportujeIzSkladista
insert into Transport_Skladiste_Prodavnica.TransportujeIzSkladista(SIF_PORUDZBINE,SIF_Z,SIF_PRODAVNICE,STATUS_ISPORUKE)
values
	(3,36,3,'ISPORUCEN'),
	(4,36,4,'ISPORUCEN'),
	(7,36,2,'ISPORUCEN'),
	(8,37,4,'ISPORUCEN'),
	(11,37,5,'U TRANSPORTU'),
	(12,37,3,'U TRANSPORTU');

--Prodaja
insert into Bonus.Prodaja(SIF_PRODAJE,KOLICINA,VREME_PRODAJE,DATUM_PRODAJE,SIF_PROIZVODA,SIF_Z,BONUS_NA_PRODAJU)
values
	(NEXT VALUE FOR Bonus.SeqProdaja,2,cast('07:35' as time),'14-JUL-17',5,34,200),
	(NEXT VALUE FOR Bonus.SeqProdaja,1,cast('08:35' as time),'14-JUL-17',13,32,220),
	(NEXT VALUE FOR Bonus.SeqProdaja,1,cast('08:55' as time),'15-JUL-17',3,32,180),
	(NEXT VALUE FOR Bonus.SeqProdaja,1,cast('09:35' as time),'15-JUL-17',10,26,160),
	(NEXT VALUE FOR Bonus.SeqProdaja,1,cast('17:24' as time),'16-JUL-17',4,29,150),
	(NEXT VALUE FOR Bonus.SeqProdaja,1,cast('17:32' as time),'16-JUL-17',9,27,200),
	(NEXT VALUE FOR Bonus.SeqProdaja,2,cast('17:47' as time),'17-JUL-17',6,22,180),
	(NEXT VALUE FOR Bonus.SeqProdaja,1,cast('19:35' as time),'17-JUL-17',5,26,200),
	(NEXT VALUE FOR Bonus.SeqProdaja,2,cast('14:35' as time),'18-JUL-17',9,30,300),
	(NEXT VALUE FOR Bonus.SeqProdaja,2,cast('15:35' as time),'18-JUL-17',8,35,320),
	(NEXT VALUE FOR Bonus.SeqProdaja,2,cast('16:35' as time),'19-JUL-17',6,30,100);



