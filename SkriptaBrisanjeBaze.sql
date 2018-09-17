if OBJECT_ID('Proizvod_u_Prodavnici.NadredjeniProdavnica')is not null
	drop procedure Proizvod_u_Prodavnici.NadredjeniProdavnica
go
if OBJECT_ID('Transport_Skladiste_Prodavnica.PregledProizvodaSkladista','P')is not null
	drop procedure Transport_Skladiste_Prodavnica.PregledProizvodaSkladista
go

if object_id('Radnik.Trigger_Zaposleni','TR')is not null
	drop trigger Radnik.Trigger_Zaposleni
go

if OBJECT_ID('Transport_Skladiste_Prodavnica.Trigger_ObradjujeIzSkladista','TR')is not null
	drop trigger Transport_Skladiste_Prodavnica.Trigger_ObradjujeIzSkladista
go


if OBJECT_ID('Funkcija_BrojProdavnicaNadredjenog','FN')is not null
	drop function Funkcija_BrojProdavnicaNadredjenog
go

if OBJECT_ID('Funkcija_AktivnostAkcije','FN')is not null
	drop function Funkcija_AktivnostAkcije
go

IF OBJECT_ID('Radnik.SeqZaposleni') IS NOT NULL 
	DROP SEQUENCE Radnik.SeqZaposleni;

IF OBJECT_ID('Proizvod_u_Prodavnici.SeqRegion') IS NOT NULL 
	DROP SEQUENCE Proizvod_u_Prodavnici.SeqRegion;

IF OBJECT_ID('Proizvod_u_Prodavnici.SeqGrad') IS NOT NULL 
	DROP SEQUENCE Proizvod_u_Prodavnici.SeqGrad;

IF OBJECT_ID('Proizvod_u_Prodavnici.SeqProdavnica') IS NOT NULL 
	DROP SEQUENCE Proizvod_u_Prodavnici.SeqProdavnica;

IF OBJECT_ID('Proizvod_u_Prodavnici.SeqMagacin') IS NOT NULL 
	DROP SEQUENCE Proizvod_u_Prodavnici.SeqMagacin;

IF OBJECT_ID('Proizvod_u_Prodavnici.SeqProizvod') IS NOT NULL 
	DROP SEQUENCE Proizvod_u_Prodavnici.SeqProizvod;

IF OBJECT_ID('Proizvod_u_Prodavnici.SeqSlika') IS NOT NULL 
	DROP SEQUENCE Proizvod_u_Prodavnici.SeqSlika;

IF OBJECT_ID('Proizvod_u_Prodavnici.SeqAkcija') IS NOT NULL 
	DROP SEQUENCE Proizvod_u_Prodavnici.SeqAkcija;

IF OBJECT_ID('Online_Porudzbina.SeqOnlineProizvod') IS NOT NULL 
	DROP SEQUENCE Online_Porudzbina.SeqOnlineProizvod;

IF OBJECT_ID('Online_Porudzbina.SeqOnlineKupac') IS NOT NULL 
	DROP SEQUENCE Online_Porudzbina.SeqOnlineKupac;

IF OBJECT_ID('Online_Porudzbina.SeqPorudzbenica') IS NOT NULL 
	DROP SEQUENCE Online_Porudzbina.SeqPorudzbenica;

IF OBJECT_ID('Prevoz.SeqPrevoznoSredstvo') IS NOT NULL 
	DROP SEQUENCE Prevoz.SeqPrevoznoSredstvo;

IF OBJECT_ID('Izrada_Plana.SeqPlan') IS NOT NULL 
	DROP SEQUENCE Izrada_Plana.SeqPlan;

IF OBJECT_ID('Izrada_Plana.SeqIzvestaj') IS NOT NULL 
	DROP SEQUENCE Izrada_Plana.SeqIzvestaj;

IF OBJECT_ID('Transpor_Prodavnica_Prodavnica.SeqZahtev') IS NOT NULL 
	DROP SEQUENCE Transpor_Prodavnica_Prodavnica.SeqZahtev;

IF OBJECT_ID('Transport_Skladiste_Prodavnica.SeqSkladiste') IS NOT NULL 
	DROP SEQUENCE Transport_Skladiste_Prodavnica.SeqSkladiste;

IF OBJECT_ID('Transport_Skladiste_Prodavnica.SeqPorudzbina') IS NOT NULL 
	DROP SEQUENCE Transport_Skladiste_Prodavnica.SeqPorudzbina;

IF OBJECT_ID('Bonus.SeqProdaja') IS NOT NULL 
	DROP SEQUENCE Bonus.SeqProdaja;




IF OBJECT_ID('Bonus.Prodaja')IS NOT NULL
	DROP TABLE Bonus.Prodaja
GO

IF OBJECT_ID('Transport_Skladiste_Prodavnica.TransportujeIzSkladista')IS NOT NULL
	DROP TABLE Transport_Skladiste_Prodavnica.TransportujeIzSkladista
GO

IF OBJECT_ID('Transport_Skladiste_Prodavnica.ObradjujeIzSkladista')IS NOT NULL
	DROP TABLE Transport_Skladiste_Prodavnica.ObradjujeIzSkladista
GO

IF OBJECT_ID('Transport_Skladiste_Prodavnica.Sadrzi')IS NOT NULL
	DROP TABLE Transport_Skladiste_Prodavnica.Sadrzi
GO
IF OBJECT_ID('Transport_Skladiste_Prodavnica.Porudzbina')IS NOT NULL
	DROP TABLE Transport_Skladiste_Prodavnica.Porudzbina
GO

IF OBJECT_ID('Transport_Skladiste_Prodavnica.SkladisteStanje')IS NOT NULL
	DROP TABLE Transport_Skladiste_Prodavnica.SkladisteStanje
GO


IF OBJECT_ID('Transpor_Prodavnica_Prodavnica.TransportujeIzProdavnice')IS NOT NULL
	DROP TABLE Transpor_Prodavnica_Prodavnica.TransportujeIzProdavnice
GO

IF OBJECT_ID('Transpor_Prodavnica_Prodavnica.ObradjujeIzProdavnice')IS NOT NULL
	DROP TABLE Transpor_Prodavnica_Prodavnica.ObradjujeIzProdavnice
GO

IF OBJECT_ID('Transpor_Prodavnica_Prodavnica.Zahtev')IS NOT NULL
	DROP TABLE Transpor_Prodavnica_Prodavnica.Zahtev
GO


IF OBJECT_ID('Prevoz.Teretno_Vozilo') IS NOT NULL
	DROP TABLE Prevoz.Teretno_Vozilo
GO

IF OBJECT_ID('Prevoz.Civilno_Vozilo') IS NOT NULL
	DROP TABLE Prevoz.Civilno_Vozilo
GO

IF OBJECT_ID('Prevoz.Prevozno_Sredstvo') IS NOT NULL
	DROP TABLE Prevoz.Prevozno_Sredstvo
GO

IF OBJECT_ID('Izrada_Plana.Izvestaj')IS NOT NULL
	DROP TABLE Izrada_Plana.Izvestaj
GO

IF OBJECT_ID('Izrada_Plana."Plan"')IS NOT NULL
	DROP TABLE Izrada_Plana."Plan"
GO


IF OBJECT_ID('Transport_Skladiste_Prodavnica.Skladiste') IS NOT NULL
BEGIN 
	DROP TABLE Transport_Skladiste_Prodavnica.Skladiste
END 
GO

IF OBJECT_ID('Proizvod_u_Prodavnici.ProizMag') IS NOT NULL
BEGIN 
	DROP TABLE Proizvod_u_Prodavnici.ProizMag
END
GO

IF OBJECT_ID('Proizvod_u_Prodavnici.ProizProd') IS NOT NULL
BEGIN 
	DROP TABLE Proizvod_u_Prodavnici.ProizProd
END
GO


IF OBJECT_ID('Proizvod_u_Prodavnici.Predstavlja') IS NOT NULL
BEGIN 
	DROP TABLE Proizvod_u_Prodavnici.Predstavlja
END
GO


IF OBJECT_ID('Proizvod_u_Prodavnici.ProizAkc') IS NOT NULL
BEGIN 
	DROP TABLE Proizvod_u_Prodavnici.ProizAkc
END
GO

IF OBJECT_ID('Proizvod_u_Prodavnici.Akcija') IS NOT NULL
BEGIN 
	DROP TABLE Proizvod_u_Prodavnici.Akcija
END
GO

IF OBJECT_ID('Online_Porudzbina.SastavPorudzbenice')IS NOT NULL
	DROP TABLE Online_Porudzbina.SastavPorudzbenice
GO

IF OBJECT_ID('Online_Porudzbina.Porudzbenica')IS NOT NULL
	DROP TABLE Online_Porudzbina.Porudzbenica
GO

IF OBJECT_ID('Online_Porudzbina.OnlineProizvod')IS NOT NULL
	DROP TABLE Online_Porudzbina.OnlineProizvod
GO

if OBJECT_ID('Online_Porudzbina.Online_Kupac')is not null
	drop table Online_Porudzbina.Online_Kupac
go

IF OBJECT_ID('Proizvod_u_Prodavnici.Slika') IS NOT NULL
BEGIN 
	DROP TABLE Proizvod_u_Prodavnici.Slika
END
GO

IF OBJECT_ID('Proizvod_u_Prodavnici.Magacin') IS NOT NULL
BEGIN 
	DROP TABLE Proizvod_u_Prodavnici.Magacin
END
GO


IF (OBJECT_ID('Radnik.Prodavac') is not null)
BEGIN 
	DROP TABLE Radnik.Prodavac
END
GO

IF OBJECT_ID('Proizvod_u_Prodavnici.Prodavnica') IS NOT NULL
BEGIN 
	DROP TABLE Proizvod_u_Prodavnici.Prodavnica
END
GO


IF OBJECT_ID('Radnik.Nadredjeni') is not null
BEGIN 
	DROP TABLE Radnik.Nadredjeni
END 
GO

IF OBJECT_ID('Radnik.Vozac') is not null
BEGIN 
	DROP TABLE Radnik.Vozac
END 
GO

IF OBJECT_ID('Radnik.Skladistar') is not null
BEGIN 
	DROP TABLE Radnik.Skladistar
END 
GO


IF OBJECT_ID('Radnik.Zaposleni') IS NOT NULL
BEGIN
	DROP TABLE Radnik.Zaposleni
END
GO





IF OBJECT_ID('Proizvod_u_Prodavnici.Grad') IS NOT NULL
BEGIN 
	DROP TABLE Proizvod_u_Prodavnici.Grad
END
GO

IF OBJECT_ID('Proizvod_u_Prodavnici.Region') IS NOT NULL
BEGIN 
	DROP TABLE Proizvod_u_Prodavnici.Region
END
GO



IF OBJECT_ID('Proizvod_u_Prodavnici.Proizvod') IS NOT NULL
BEGIN 
	DROP TABLE Proizvod_u_Prodavnici.Proizvod
END
GO



--------------------Sheme---------------------------
IF SCHEMA_ID('Proizvod_u_Prodavnici') IS NOT NULL
	DROP SCHEMA Proizvod_u_Prodavnici;
GO

IF SCHEMA_ID('Radnik') IS NOT NULL
	DROP SCHEMA Radnik;
GO

IF SCHEMA_ID('Online_Porudzbina') IS NOT NULL
	DROP SCHEMA Online_Porudzbina;
GO

IF SCHEMA_ID('Prevoz') IS NOT NULL
	DROP SCHEMA Prevoz;
GO

IF SCHEMA_ID('Izrada_Plana') IS NOT NULL
	DROP SCHEMA Izrada_Plana;
GO

IF SCHEMA_ID('Transpor_Prodavnica_Prodavnica') IS NOT NULL
	DROP SCHEMA Transpor_Prodavnica_Prodavnica;
GO

IF SCHEMA_ID('Transport_Skladiste_Prodavnica') IS NOT NULL
begin
	DROP SCHEMA Transport_Skladiste_Prodavnica;
end
GO

IF SCHEMA_ID('Bonus') IS NOT NULL
begin
	DROP SCHEMA Bonus;
end
GO