
--Sema Radnik
IF SCHEMA_ID('Radnik') IS NOT NULL
	DROP SCHEMA Radnik;
GO
CREATE SCHEMA Radnik
GO;

-- Sekvecna za tabelu Zaspoleni
IF OBJECT_ID('Radnik.SeqZaposleni') IS NOT NULL 
	DROP SEQUENCE Radnik.SeqZaposleni;

create sequence Radnik.SeqZaposleni as int 
	start with 1
	increment by 1 
go

--Tabela Zapoosleni
IF OBJECT_ID('Radnik.Zaposleni') IS NOT NULL
BEGIN
	DROP TABLE Radnik.Zaposleni;
END
GO
create table Radnik.Zaposleni(
	SIF_Z int not null,
	IME varchar(20) not null,
	PREZIME varchar(20) not null,
	JMBG char(13) unique not null,
	ADRESA varchar(100) not null,
	KONTAKT_TELEFON varchar(20) not null,
	MAIL varchar (50),
	PLATA money not null check(PLATA>=0),
	RADNO_MESTO varchar(80) not null,
	SEF int,
	constraint FK_Zapolseni_Sef foreign key (SEF) references Radnik.Zaposleni(SIF_Z),
	constraint PK_SIF_Z primary key (SIF_Z)
);

--Tabela Vozac
IF OBJECT_ID('Radnik.Vozac') is not null
BEGIN 
	DROP TABLE Radnik.Vozac;
END 
GO

create table Radnik.Vozac(
	SIF_Z int not null,
	kategorija nvarchar(2) not null check(KATEGORIJA like 'C1' or KATEGORIJA like 'D1'),
	BR_VOZ_DOZVOLE numeric(9) not null unique,
	constraint PK_Radnik_Vozac primary key (SIF_Z),
	constraint FK_Vozac_Radnik_Zaposleni foreign key(SIF_Z) references Radnik.Zaposleni(SIF_Z)
);


--Tabela Skladistar
IF OBJECT_ID('Radnik.Skladistar') is not null
BEGIN 
	DROP TABLE Radnik.Skladistar;
END 
GO

create table Radnik.Skladistar(
	SIF_Z int not null,
	KATEGORIJA char check(KATEGORIJA='F'),
	SIF_SKLADISTA int not null,
	constraint PK_Radnik_Skladistar primary key (SIF_Z),
	constraint FK_Skladistar_Radnik_Zaposleni foreign key (SIF_Z) references Radnik.Zaposleni(SIF_Z)
);

--Tabela Prodavac
IF (OBJECT_ID('Radnik.Prodavac') is not null)
BEGIN 
	DROP TABLE Radnik.Prodavac;
END
GO

create table Radnik.Prodavac(
	SIF_Z int not null,
	SIF_PRODAVNICE int not null,
	BR_KARTICE numeric(6,0) unique,
	constraint PK_Radnik_Prodavac primary key(SIF_Z),
	constraint FK_Prodavac_Radnik_Zaposleni foreign key (SIF_Z) references Radnik.Zaposleni(SIF_Z),
	constraint FK_Prodavac_Radnik_Prodavnica foreign key (SIF_PRODAVNICE) references Proizvod_u_Prodavnici.Prodavnica(SIF_PRODAVNICE),
);

--Tabela Nadredjeni
IF OBJECT_ID('Radnik.Nadredjeni') is not null
BEGIN 
	DROP TABLE Radnik.Nadredjeni;
END 
GO

create table Radnik.Nadredjeni(
	SIF_Z int not null,
	SIF_REGION int,
	KATEGORIJA varchar(10),
	constraint PK_Nadredjeni primary key (SIF_Z),
	constraint FK_Nadredjeni_Radnik_Zaposleni foreign key (SIF_Z)  references Radnik.Zaposleni(SIF_Z),
	constraint FK_Nadredjeni_Radnik_Region foreign key (SIF_REGION) references Proizvod_u_Prodavnici.Region(SIF_REGION)
);


--Sema Proizvod_u_Prodavnici
IF SCHEMA_ID('Proizvod_u_Prodavnici') IS NOT NULL
	DROP SCHEMA Proizvod_u_Prodavnici;
GO

CREATE SCHEMA Proizvod_u_Prodavnici;
GO

-- sekvecna za tabelu Prodavnica
IF OBJECT_ID('Proizvod_u_Prodavnici.SeqProdavnica') IS NOT NULL 
	DROP SEQUENCE Proizvod_u_Prodavnici.SeqProdavnica;
	
create sequence Proizvod_u_Prodavnici.SeqProdavnica as int 
	start with 1
	increment by 1 
go

--Tabela Prodavnica
IF OBJECT_ID('Proizvod_u_Prodavnici.Prodavnica') IS NOT NULL
BEGIN 
	DROP TABLE Proizvod_u_Prodavnici.Prodavnica;
END
GO

create table Proizvod_u_Prodavnici.Prodavnica(
	SIF_PRODAVNICE int not null,
	SIF_GRADA int not null,
	ADRESA varchar(100) not null,
	KONTAKT_TELEFON varchar(20),
	POVRSINA numeric(6,2) not null check(POVRSINA>=0),
	RADNOVREME_RD varchar(12),
	RADNOVREME_SUBOTA varchar(12),
	RADNOVREME_NEDELJA varchar(12),
	ARANZER int null,
	ADMINISTRATOR int null,
	MENADZER int null,
	constraint PK_Sif_Prodavnice primary key (SIF_PRODAVNICE),
	constraint FK_Prodavnica_PuP_NadredjeniAranzer foreign key(ARANZER) references Radnik.Nadredjeni(SIF_Z),
	constraint FK_Prodavnica_PuP_NadredjeniAdministrator foreign key(ADMINISTRATOR) references Radnik.Nadredjeni(SIF_Z),
	constraint FK_Prodavnica_PuP_NadredjeniMenadzer foreign key(MENADZER) references Radnik.Nadredjeni(SIF_Z),
	constraint FK_Prodavina_PuP_Grad foreign key (SIF_GRADA) references Proizvod_u_Prodavnici.Grad(SIF_GRAD)
);


-- sekvecna za tabelu Region
IF OBJECT_ID('Proizvod_u_Prodavnici.SeqRegion') IS NOT NULL 
	DROP SEQUENCE Proizvod_u_Prodavnici.SeqRegion;

create sequence Proizvod_u_Prodavnici.SeqRegion as int 
	start with 1
	increment by 1 
go

--Tabela Region
IF OBJECT_ID('Proizvod_u_Prodavnici.Region') IS NOT NULL
BEGIN 
	DROP TABLE Proizvod_u_Prodavnici.Region;
END
GO

create table Proizvod_u_Prodavnici.Region(
	SIF_REGION int not null,
	NAZIV varchar(40),
	constraint PK_SIF_REGIONA primary key (SIF_REGION)
);


-- sekvecna za tabelu GRAD
IF OBJECT_ID('Proizvod_u_Prodavnici.SeqGrad') IS NOT NULL 
	DROP SEQUENCE Proizvod_u_Prodavnici.SeqGrad;
	
create sequence Proizvod_u_Prodavnici.SeqGrad as int 
	start with 1
	increment by 1 
go


--Tabela Grad
IF OBJECT_ID('Proizvod_u_Prodavnici.Grad') IS NOT NULL
BEGIN 
	DROP TABLE Proizvod_u_Prodavnici.Grad;
END
GO

create table Proizvod_u_Prodavnici.Grad(
	SIF_GRAD int not null,
	NAZIV varchar(40),
	SIF_REGION int not null,
	constraint PK_SIF_GRAD primary key (SIF_GRAD),
	constraint FK_GRAD_PuP_REGION foreign key (SIF_REGION) references Proizvod_u_Prodavnici.Region(SIF_REGION)
);


-- sekvecna za tabelu Proizvod
IF OBJECT_ID('Proizvod_u_Prodavnici.SeqProizvod') IS NOT NULL 
	DROP SEQUENCE Proizvod_u_Prodavnici.SeqProizvod;

create sequence Proizvod_u_Prodavnici.SeqProizvod as int 
	start with 1
	increment by 1 
go


--Tabela  Proizvod
IF OBJECT_ID('Proizvod_u_Prodavnici.Proizvod') IS NOT NULL
BEGIN 
	DROP TABLE Proizvod_u_Prodavnici.Proizvod;
END
go

create table Proizvod_u_Prodavnici.Proizvod(
	SIF_PROIZVODA int not null,
	NAZIV_PROIZVODA varchar(30) not null,
	OPIS varchar(100),
	OSNOVNA_CENA numeric(10,2) not null check(OSNOVNA_CENA>=0),
	PRODAJNA_CENA numeric(10,2) not null check(PRODAJNA_CENA>=0),
	KOMERCIJALNA_CENA numeric(10,2) not null check(KOMERCIJALNA_CENA>=0),
	KATEGORIJA varchar(50) not null,
	VRSTA varchar(50) not null,
	constraint PK_Proizvod primary key (SIF_PROIZVODA)
);


--Tabela Magacin
IF OBJECT_ID('Proizvod_u_Prodavnici.Magacin') IS NOT NULL
BEGIN 
	DROP TABLE Proizvod_u_Prodavnici.Magacin;
END
GO

create table Proizvod_u_Prodavnici.Magacin(
	SIF_MAGACINA int not null,
	SIF_PRODAVNICE int not null unique,
	constraint PK_Magacin primary key(SIF_MAGACINA,SIF_PRODAVNICE),
	constraint FK_Magacin_PuP_Prodavnica foreign key (SIF_PRODAVNICE) references Proizvod_u_Prodavnici.Prodavnica(SIF_PRODAVNICE)
);


--Tabela nastala izmedju  Poizvod i Magacin
IF OBJECT_ID('Proizvod_u_Prodavnici.ProizMag') IS NOT NULL
BEGIN 
	DROP TABLE Proizvod_u_Prodavnici.ProizMag;
END
GO

create table Proizvod_u_Prodavnici.ProizMag(
	SIF_MAGACINA int not null,
	SIF_PRODAVNICE int not null,
	SIF_PROIZVODA int not null,
	KOLICINA numeric(6,0) default(0) check(KOLICINA >=0),
	constraint PK_ProdMag primary key (SIF_MAGACINA,SIF_PRODAVNICE,SIF_PROIZVODA),
	constraint FK_ProdMag_PuP_Magacin foreign key (SIF_MAGACINA,SIF_PRODAVNICE) references Proizvod_u_Prodavnici.Magacin(SIF_MAGACINA,SIF_PRODAVNICE),
	constraint FK_ProdMag_PuP_Proizvod foreign key (SIF_PROIZVODA) references Proizvod_u_Prodavnici.Proizvod(SIF_PROIZVODA)
);


--Tabela nastala izmedju Proizvod i Magacin
IF OBJECT_ID('Proizvod_u_Prodavnici.ProizProd') IS NOT NULL
BEGIN 
	DROP TABLE Proizvod_u_Prodavnici.ProizProd;
END
GO

create table Proizvod_u_Prodavnici.ProizProd(
	SIF_PROIZVODA int not null,
	SIF_PRODAVNICE int not null,
	KOLICINA numeric(6,0) default(0) check(KOLICINA >=0),
	constraint PK_ProizProd primary key (SIF_PRODAVNICE,SIF_PROIZVODA),
	constraint FK_ProizPro_PuP_Proizvod foreign key (SIF_PROIZVODA) references Proizvod_u_Prodavnici.Proizvod(SIF_PROIZVODA),
	constraint FK_ProizPro_PuP_Prodavnica foreign key (SIF_PRODAVNICE) references Proizvod_u_Prodavnici.Prodavnica(SIF_PRODAVNICE)
);


-- sekvecna za tabelu Slika
IF OBJECT_ID('Proizvod_u_Prodavnici.SeqSlika') IS NOT NULL 
	DROP SEQUENCE Proizvod_u_Prodavnici.SeqSlika;

create sequence Proizvod_u_Prodavnici.SeqSlika as int 
	start with 1
	increment by 1 
go


--Tabela SLika
IF OBJECT_ID('Proizvod_u_Prodavnici.Slika') IS NOT NULL
BEGIN 
	DROP TABLE Proizvod_u_Prodavnici.Slika;
END
GO

create table Proizvod_u_Prodavnici.Slika(
	SIF_SLIKA int not null,
	PUTANJA_FAJLA varchar(500) not null,
	constraint PK_Sif_Slike primary key (SIF_SLIKA)
);


--Tabela nastala izmedju Slika i Proizvod
IF OBJECT_ID('Proizvod_u_Prodavnici.Predstavlja') IS NOT NULL
BEGIN 
	DROP TABLE Proizvod_u_Prodavnici.Predstavlja;
END
GO

create table Proizvod_u_Prodavnici.Predstavlja(
	SIF_PROIZVODA int not null,
	SIF_SLIKA int not null,
	constraint PK_Predstavlja primary key (SIF_PROIZVODA,SIF_SLIKA),
	constraint FK_Predstavlja_PuP_Proizvod foreign key (SIF_PROIZVODA) references Proizvod_u_Prodavnici.Proizvod(SIF_PROIZVODA),
	constraint FK_Predstavlja_PuP_Slika foreign key (SIF_SLIKA) references Proizvod_u_Prodavnici.Slika(SIF_SLIKA)
);


-- sekvecna za tabelu Akcija
IF OBJECT_ID('Proizvod_u_Prodavnici.SeqAkcija') IS NOT NULL 
	DROP SEQUENCE Proizvod_u_Prodavnici.SeqAkcija;

create sequence Proizvod_u_Prodavnici.SeqAkcija as int 
	start with 1
	increment by 1 
go


--Tabela Akcija
IF OBJECT_ID('Proizvod_u_Prodavnici.Akcija') IS NOT NULL
BEGIN 
	DROP TABLE Proizvod_u_Prodavnici.Akcija;
END
GO

create table Proizvod_u_Prodavnici.Akcija(
	 SIF_AKCIJE int not null,
	 DATUM_POCETKA date not null,
	 DATUM_ZAVRSETKA date not null,
	 PROCENAT numeric(4,2) not null check(PROCENAT > 0),
	 constraint PK_Akcija primary key (SIF_AKCIJE)
);


--Tabela nastala izmedju Proizvod i Akcija
IF OBJECT_ID('Proizvod_u_Prodavnici.ProizAkc') IS NOT NULL
BEGIN 
	DROP TABLE Proizvod_u_Prodavnici.ProizAkc;
END
GO

create table Proizvod_u_Prodavnici.ProizAkc(	
	SIF_AKCIJE int not null,
	SIF_PROIZVODA int not null,
	CENA numeric(10,2) not null check(CENA>=0),
	constraint PK_ProizAkc primary key(SIF_AKCIJE,SIF_PROIZVODA),
	constraint FK_ProizAkc_PuP_Akcija foreign key(SIF_AKCIJE) references Proizvod_u_Prodavnici.Akcija(SIF_AKCIJE),
	constraint FK_ProizAkc_PuP_Proizvod foreign key (SIF_PROIZVODA) references Proizvod_u_Prodavnici.Proizvod(SIF_PROIZVODA)
);


--Sema Online_Porudzbina
IF SCHEMA_ID('Online_Porudzbina') IS NOT NULL
	DROP SCHEMA Online_Porudzbina;
GO
CREATE SCHEMA Online_Porudzbina;
GO


-- sekvecna za tabelu OnlineProizvod
IF OBJECT_ID('Online_Porudzbina.SeqOnlineProizvod') IS NOT NULL 
	DROP SEQUENCE Online_Porudzbina.SeqOnlineProizvod;

create sequence Online_Porudzbina.SeqOnlineProizvod as int 
	start with 1
	increment by 1 
go


--Tabla OnlineProizvod
IF OBJECT_ID('Online_Porudzbina.OnlineProizvod')IS NOT NULL
	DROP TABLE Online_Porudzbina.OnlineProizvod;
GO
create table Online_Porudzbina.OnlineProizvod(
	SIF_ONLINE_PROIZVODA int not null,
	SIF_PROIZVODA int not null unique,
	DOSTUPNO varchar(2) not null check(DOSTUPNO like 'DA' or DOSTUPNO like 'NE'),
	ONLINE_CENA numeric(10,2) not null check(ONLINE_CENA>=0),
	constraint PK_OnlineProizvod primary key (SIF_ONLINE_PROIZVODA),
	constraint FK_OnlineProizvod_PuP_Proizvod foreign key (SIF_PROIZVODA) references Proizvod_u_Prodavnici.Proizvod(SIF_PROIZVODA)
);


-- sekvecna za tabelu OnlineKupac
IF OBJECT_ID('Online_Porudzbina.SeqOnlineKupac') IS NOT NULL 
	DROP SEQUENCE Online_Porudzbina.SeqOnlineKupac;
	
create sequence Online_Porudzbina.SeqOnlineKupac as int 
	start with 1
	increment by 1 
go


--Tabela OnlineKupac
IF OBJECT_ID('Online_Porudzbina.Online_Kupac')is not null
	drop table Online_Porudzbina.Online_Kupac;
go

create table Online_Porudzbina.Online_Kupac(
	SIF_KUPCA int not null,
	IME varchar(20) not null,
	PREZIME varchar(20) not null,
	EMAIL varchar (100) not null unique,
	KONTAKT varchar(12) not null unique,
	constraint PK_OnlineKupac primary key (SIF_KUPCA)
);


-- sekvecna za tabelu Porudzbenica
IF OBJECT_ID('Online_Porudzbina.SeqPorudzbenica') IS NOT NULL 
	DROP SEQUENCE Online_Porudzbina.SeqPorudzbenica;

create sequence Online_Porudzbina.SeqPorudzbenica as int 
	start with 1
	increment by 1 
go


--Tabela Porudzbenica
IF OBJECT_ID('Online_Porudzbina.Porudzbenica')IS NOT NULL
	DROP TABLE Online_Porudzbina.Porudzbenica;
GO

create table Online_Porudzbina.Porudzbenica(
	SIF_PORUDZBENICE int not null,
	SIF_PRODAVNICE int not null,
	SIF_KUPCA int not null,
	SIF_ONLINE_PROIZVODA int not null,
	KOLICINA int not null check(KOLICINA>0),
	AKTIVNA varchar(2) not null check(AKTIVNA like 'DA' or AKTIVNA like 'NE'),
	constraint PK_Porudzbenica primary key (SIF_PORUDZBENICE),
	constraint FK_Porudzbenica_PuP_Prodavnica foreign key (SIF_PRODAVNICE) references Proizvod_u_Prodavnici.Prodavnica(SIF_PRODAVNICE),
	constraint FK_Porudzbenica_PUP_Kupac foreign key (SIF_KUPCA) references Online_Porudzbina.Online_Kupac(SIF_KUPCA),
	constraint FK_Porudzbenica_PUP_OnlineProizvod foreign key (SIF_ONLINE_PROIZVODA) references Online_Porudzbina.OnlineProizvod(SIF_ONLINE_PROIZVODA)
);


--Sema Prevoz
IF SCHEMA_ID('Prevoz') IS NOT NULL
	DROP SCHEMA Prevoz;
GO
CREATE SCHEMA Prevoz;
GO


-- sekvecna za tabelu PrevoznoSredstvo
IF OBJECT_ID('Prevoz.SeqPrevoznoSredstvo') IS NOT NULL 
	DROP SEQUENCE Prevoz.SeqPrevoznoSredstvo;

create sequence Prevoz.SeqPrevoznoSredstvo as int 
	start with 1
	increment by 1 
go


--Tabela Prevozno_Sredstvo
IF OBJECT_ID('Prevoz.Prevozno_Sredstvo') IS NOT NULL
	DROP TABLE Prevoz.Prevozno_Sredstvo;
GO

create table Prevoz.Prevozno_Sredstvo(
	SIF_VOZILA int not null,
	MODEL varchar(30) not null,
	BR_REG_TABLICE varchar(12) not null unique,
	DATUM_ISTEKA_REG date not null,
	DATUM_ZADUZIVANJA date not null,
	DATUM_RAZDUZIVANJA date not null,
	constraint PK_Prevozno_Sredstvo primary key (SIF_VOZILA)
);


--Tabela Civilno_Vozilo
IF OBJECT_ID('Prevoz.Civilno_Vozilo') IS NOT NULL
	DROP TABLE Prevoz.Civilno_Vozilo;
GO

create table Prevoz.Civilno_Vozilo(
	SIF_VOZILA int not null,
	SIF_Z int not null unique, 
	constraint PK_Civilno_Vozilo primary key (SIF_VOZILA),
	constraint FK_Civlino_Vozilo_Ranik_Nadredjeni foreign key (SIF_Z) references Radnik.Nadredjeni(SIF_Z),
	constraint FK_Civlino_Vozilo_P_Prevozno_Sredstvo foreign key (SIF_VOZILA) references Prevoz.Prevozno_Sredstvo(SIF_VOZILA)
);


--Tabela Teretno_Vozilo
IF OBJECT_ID('Prevoz.Teretno_Vozilo') IS NOT NULL
	DROP TABLE Prevoz.Teretno_Vozilo;
GO

create table Prevoz.Teretno_Vozilo(
	SIF_VOZILA int not null,
	MARKA varchar(20) not null,
	VOZAC integer not null unique,
	constraint PK_Teretno_Vozilo primary key (SIF_VOZILA),
	constraint FK_Ter_Voz_Pr_Prevozno_Sredstvo foreign key (SIF_VOZILA) references Prevoz.Prevozno_Sredstvo(SIF_VOZILA),
	constraint FK_Ter_Voz_Pr_Radnik_Vozac foreign key (VOZAC) references Radnik.Vozac(SIF_Z)
);


--Sema Izrada_Plana
IF SCHEMA_ID('Izrada_Plana') IS NOT NULL
	DROP SCHEMA Izrada_Plana;
GO
CREATE SCHEMA Izrada_Plana;
GO


-- sekvecna za tabelu Plan
IF OBJECT_ID('Izrada_Plana.SeqPlan') IS NOT NULL 
	DROP SEQUENCE Izrada_Plana.SeqPlan;

create sequence Izrada_Plana.SeqPlan as int 
	start with 1
	increment by 1 
go


SET QUOTED_IDENTIFIER ON;

--Tabela PLan
IF OBJECT_ID('Izrada_Plana."Plan"')IS NOT NULL
	DROP TABLE Izrada_Plana."Plan";
GO

create table Izrada_Plana."Plan"(
	SIF_PLANA int not null,
	SIF_KREATORA int not null,
	DATUM date not null,
	NEDELJA int not null check(NEDELJA>0),
	DAN_U_NEDELJI varchar(30),
	OPIS_PLANA varchar(1000) not null,
	constraint PK_Plan primary key(SIF_PLANA),
	constraint FK_Plan_Izrada_Plana_Nadredjeni foreign key (SIF_KREATORA) references  Radnik.Nadredjeni(SIF_Z) 
);


-- sekvecna za tabelu Izvestaj
IF OBJECT_ID('Izrada_Plana.SeqIzvestaj') IS NOT NULL 
	DROP SEQUENCE Izrada_Planaj.SeqIzvestaj;

create sequence Izrada_Plana.SeqIzvestaj as int 
	start with 1
	increment by 1 
go


--Tabela Izvestaj
IF OBJECT_ID('Izrada_Plana.Izvestaj')IS NOT NULL
	DROP TABLE Izrada_Plana.Izvestaj;
GO
create table Izrada_Plana.Izvestaj(
	SIF_IZVESTAJ int not null,
	SIF_PLANA int not null,
	DATUM date not null,
	NEDELJA int not null  check(NEDELJA>0),
	DAN_U_NEDELJI varchar(30),
	OPIS_IZVESTAJA varchar(1000) not null,
	constraint PK_Izvestaj primary key (SIF_IZVESTAJ),
	constraint FK_Izvestaj_IzradaPlana_Plan foreign key (SIF_PLANA) references Izrada_Plana."Plan"(SIF_PLANA),
);


--Sema Transpor_Prodavnica_Prodavnica
IF SCHEMA_ID('Transpor_Prodavnica_Prodavnica') IS NOT NULL
	DROP SCHEMA Transpor_Prodavnica_Prodavnica;
GO
CREATE SCHEMA Transpor_Prodavnica_Prodavnica;
GO


-- sekvecna za tabelu Zahtev
IF OBJECT_ID('Transpor_Prodavnica_Prodavnica.SeqZahtev') IS NOT NULL 
	DROP SEQUENCE Transpor_Prodavnica_Prodavnica.SeqZahtev;

create sequence Transpor_Prodavnica_Prodavnica.SeqZahtev as int 
	start with 1
	increment by 1 
go


--Tabela Zahtev
IF OBJECT_ID('Transpor_Prodavnica_Prodavnica.Zahtev')IS NOT NULL
	DROP TABLE Transpor_Prodavnica_Prodavnica.Zahtev;
GO
create table Transpor_Prodavnica_Prodavnica.Zahtev(
	SIF_ZAHTEVA int not null,
	SIF_Z int not null,
	SIF_PROIZVODA int not null,
	SIF_PRODAVNICE int not null,
	KOLICINA numeric(10,0) not null check(KOLICINA>0),
	AKTIVAN varchar(2) not null check (AKTIVAN like 'DA' or AKTIVAN like 'NE'),
	DATUM_KREIRANJA date not null,
	constraint PK_Zahtev primary key(SIF_ZAHTEVA),
	constraint FK_Zahtev_TPP_Prodavac foreign key (SIF_Z) references Radnik.Prodavac(SIF_Z),
	constraint FK_Zahtev_TPP_ProizProd foreign key (SIF_PRODAVNICE,SIF_PROIZVODA) references Proizvod_u_Prodavnici.ProizProd(SIF_PRODAVNICE,SIF_PROIZVODA)
);


--Tabela nastala izmedju Prodavac i Zahtev
IF OBJECT_ID('Transpor_Prodavnica_Prodavnica.ObradjujeIzProdavnice')IS NOT NULL
	DROP TABLE Transpor_Prodavnica_Prodavnica.ObradjujeIzProdavnice;
GO
create table Transpor_Prodavnica_Prodavnica.ObradjujeIzProdavnice(
	SIF_Z int not null,
	SIF_ZAHTEVA int not null unique,
	DATUM_OBRADE date not null,
	constraint PK_ObradjujeIzProdavnice primary key(SIF_ZAHTEVA),
	constraint FK_ObradjujeIzProdavnice_TPP_Zahtev foreign key (SIF_ZAHTEVA) references Transpor_Prodavnica_Prodavnica.Zahtev(SIF_ZAHTEVA),
	constraint FK_ObradjujeIzProdavnice_TPP_Prodavac foreign key (SIF_Z) references  Radnik.Prodavac(SIF_Z)
);


--Tabela nastala izmedju ObradjujeIzProdavnice i Vozac
IF OBJECT_ID('Transpor_Prodavnica_Prodavnica.TransportujeIzProdavnice')IS NOT NULL
	DROP TABLE Transpor_Prodavnica_Prodavnica.TransportujeIzProdavnice;
GO
create table Transpor_Prodavnica_Prodavnica.TransportujeIzProdavnice(
	SIF_Z int not null,
	SIF_ZAHTEVA int not null unique,
	STATUS_ISPORUKE varchar(20) not null check(STATUS_ISPORUKE like 'NEISPORUCEN' or STATUS_ISPORUKE like 'ISPORUCEN' or STATUS_ISPORUKE like 'U TRANSPORTU'),
	SIF_PRODAVNICE int not null,
	constraint PK_Transportuje primary key (SIF_ZAHTEVA),
	constraint FK_Transportuje_TPP_Vozac foreign key (SIF_Z) references Radnik.Vozac(SIF_Z),
	constraint FK_Transportuje_TPP_Prodavnica foreign key (SIF_PRODAVNICE) references  Proizvod_u_Prodavnici.Prodavnica(SIF_PRODAVNICE),
	constraint FK_Transportuje_TPP_Zahtev foreign key (SIF_ZAHTEVA) references Transpor_Prodavnica_Prodavnica.ObradjujeIzProdavnice(SIF_ZAHTEVA)
);


--Sema Transport_Skladiste_Prodavnica
IF SCHEMA_ID('Transport_Skladiste_Prodavnica') IS NOT NULL
begin
	DROP SCHEMA Transport_Skladiste_Prodavnica;
end
GO
CREATE SCHEMA Transport_Skladiste_Prodavnica
GO


-- sekvecna za tabelu Skladiste
IF OBJECT_ID('Transport_Skladiste_Prodavnica.SeqSkladiste') IS NOT NULL 
	DROP SEQUENCE Transport_Skladiste_Prodavnica.SeqSkladiste;

create sequence Transport_Skladiste_Prodavnica.SeqSkladiste as int 
	start with 1
	increment by 1 
go


--Tabela Skladiste
IF OBJECT_ID('Transport_Skladiste_Prodavnica.Skladiste')IS NOT NULL
	DROP TABLE Transport_Skladiste_Prodavnica.Skladiste;
GO
create table Transport_Skladiste_Prodavnica.Skladiste(
	SIF_SKLADISTA int not null,
	KONTAKT_TELEFON varchar(30) not null unique,
	LOKACIJA varchar(100) not null,
	constraint PK_Skladiste primary key (SIF_SKLADISTA),
);


--Tabela nastala izmedju Skladiste i Stanje
IF OBJECT_ID('Transport_Skladiste_Prodavnica.SkladisteStanje')IS NOT NULL
	DROP TABLE Transport_Skladiste_Prodavnica.SkladisteStanje;
GO
create table  Transport_Skladiste_Prodavnica.SkladisteStanje(
	SIF_SKLADISTA int not null,
	SIF_PROIZVODA int not null,
	KOLICINA numeric(5,0) default(0) check(KOLICINA>=0),
	constraint PK_SkladisteStanje primary key(SIF_SKLADISTA,SIF_PROIZVODA),
	constraint FK_SkladisteStanje_TSP_Skladiste foreign key (SIF_SKLADISTA) references Transport_Skladiste_Prodavnica.Skladiste(SIF_SKLADISTA),
	constraint FK_SkladisteStanje_TSP_Proizvod foreign key (SIF_PROIZVODA) references Proizvod_u_Prodavnici.Proizvod(SIF_PROIZVODA)
);


-- sekvecna za tabelu Porudzbina
IF OBJECT_ID('Transport_Skladiste_Prodavnica.SeqPorudzbina') IS NOT NULL 
	DROP SEQUENCE Transport_Skladiste_Prodavnica.SeqPorudzbina;

create sequence Transport_Skladiste_Prodavnica.SeqPorudzbina as int 
	start with 1
	increment by 1 
go


--Tabela Porudzbina
IF OBJECT_ID('Transport_Skladiste_Prodavnica.Porudzbina')IS NOT NULL
	DROP TABLE Transport_Skladiste_Prodavnica.Porudzbina
GO
create table Transport_Skladiste_Prodavnica.Porudzbina(
	SIF_PORUDZBINE int not null,
	SIF_Z int not null,
	SIF_SKLADISTA int not null,
	SIF_PROIZVODA int not null,
	DATUM date not null,
	AKTIVNA varchar(2) check(AKTIVNA like 'DA' or AKTIVNA like 'NE'),
	constraint PK_Porudzbina primary key (SIF_PORUDZBINE),
	constraint FK_Porudzbina_TSP_Prodavac foreign key (SIF_Z) references Radnik.Prodavac(SIF_Z),
	constraint FK_Porudzbina_TSP_SkladisteStanje foreign key (SIF_SKLADISTA,SIF_PROIZVODA) references  Transport_Skladiste_Prodavnica.SkladisteStanje(SIF_SKLADISTA,SIF_PROIZVODA)
);


--Tabela nastala izmedju Porudzbina i Skladistar 
IF OBJECT_ID('Transport_Skladiste_Prodavnica.ObradjujeIzSkladista')IS NOT NULL
	DROP TABLE Transport_Skladiste_Prodavnica.ObradjujeIzSkladista;
GO
create table Transport_Skladiste_Prodavnica.ObradjujeIzSkladista(
	SIF_Z int not null,
	SIF_PORUDZBINE int not null,
	VREME_OBRADE date not null,
	constraint PK_ObradjujeIzSkladista primary key (SIF_PORUDZBINE),
	constraint FK_ObradjujeIzSkladista_TSP_Skladistar foreign key (SIF_Z) references Radnik.Skladistar(SIF_Z),
	constraint FK_ObradjujeIzSkladista_TSP_Porudzbina foreign key (SIF_PORUDZBINE) references Transport_Skladiste_Prodavnica.Porudzbina(SIF_PORUDZBINE)
);


--Tabela nastala izmedju ObradjujeIzSkladista i Vozac
IF OBJECT_ID('Transport_Skladiste_Prodavnica.TransportujeIzSkladista')IS NOT NULL
	DROP TABLE Transport_Skladiste_Prodavnica.TransportujeIzSkladista;
GO
create table Transport_Skladiste_Prodavnica.TransportujeIzSkladista(
	SIF_Z int not null,
	SIF_PORUDZBINE int not null,
	SIF_PRODAVNICE int not null,
	STATUS_ISPORUKE varchar(20) not null check(STATUS_ISPORUKE like 'NEISPORUCEN' or STATUS_ISPORUKE like 'ISPORUCEN' or STATUS_ISPORUKE like 'U TRANSPORTU'),
	constraint PK_TransportujeIzSkladista primary key (SIF_PORUDZBINE),
	constraint FK_TransportujeIzSkladista_TSP_ObradjujeIzSkladista foreign key (SIF_PORUDZBINE) references Transport_Skladiste_Prodavnica.ObradjujeIzSkladista(SIF_PORUDZBINE),
	constraint FK_TransportujeIzSkladista_TSP_Vozac foreign key (SIF_Z) references Radnik.Vozac (SIF_Z),
	constraint FK_TransportujeIzSkladista_TSP_Prodavnica foreign key (SIF_PRODAVNICE) references  Proizvod_u_Prodavnici.Prodavnica(SIF_PRODAVNICE)
);


---Sema Bonus
IF SCHEMA_ID('Bonus') IS NOT NULL
begin
	DROP SCHEMA Bonus;
end
GO
create schema Bonus;
go


-- sekvecna za tabelu Prodaja
IF OBJECT_ID('Bonus.SeqProdaja') IS NOT NULL 
	DROP SEQUENCE Bonus.SeqProdaja;

create sequence Bonus.SeqProdaja as int 
	start with 1
	increment by 1 
go


--Tabela Prodaja
IF OBJECT_ID('Bonus.Prodaja')IS NOT NULL
	DROP TABLE Bonus.Prodaja;
GO
create table Bonus.Prodaja(
	SIF_PRODAJE int not null,
	KOLICINA int not null check(KOLICINA>0),
	VREME_PRODAJE time not null,
	DATUM_PRODAJE date not null,
	BONUS_NA_PRODAJU numeric(9,2) not null check(BONUS_NA_PRODAJU>0),
	SIF_PROIZVODA int not null,
	SIF_Z int not null,
	constraint PK_Prodao primary key (SIF_PRODAJE),
	constraint FK_Prodao_Bonus_Prodavac foreign key (SIF_Z) references Radnik.Prodavac(SIF_Z),
	constraint FK_Prodao_Bonus_Proizvod foreign key (SIF_PROIZVODA) references Proizvod_u_Prodavnici.Proizvod(SIF_PROIZVODA)
);