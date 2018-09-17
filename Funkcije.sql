/**************   FUNKCIJA 1   ***************
	
	Funkcija koja za prosledjenu sifru Aranzera,Administratora ili Menadzera ispisuje broj prodavnica za koji je zaduzen.
	
**********************************************/


if OBJECT_ID('Funkcija_BrojProdavnicaNadredjenog','FN')is not null
	drop function Funkcija_BrojProdavnicaNadredjenog
go

create function Funkcija_BrojProdavnicaNadredjenog
(
	@sif_nadredjenog as int
)
returns int
as 
begin 
	declare @radnoMesto as varchar(50);
	set @radnoMesto=(select RADNO_MESTO from Radnik.Zaposleni where SIF_Z=@sif_nadredjenog)
	
	declare @brojProdavnica as int;

	if(@radnoMesto like 'Aranzer')
	begin
		set @brojProdavnica=(select count(SIF_PRODAVNICE) from Proizvod_u_Prodavnici.Prodavnica where ARANZER=@sif_nadredjenog)
	end
	else if (@radnoMesto like 'Administrator')
	begin
		set @brojProdavnica=(select count(SIF_PRODAVNICE) from Proizvod_u_Prodavnici.Prodavnica where ADMINISTRATOR=@sif_nadredjenog)
	end
	else if (@radnoMesto like 'Regionalni Menadzer' or @radnoMesto like 'Regionalni Direktor')
	begin
		set @brojProdavnica=(select count(SIF_PRODAVNICE) from Proizvod_u_Prodavnici.Prodavnica where MENADZER=@sif_nadredjenog)
	end
	
	return  @brojProdavnica;
end 
go

/******************  TEST ****************/

--Regionalni Menadzer kao Menadzer prodavnice
select dbo.Funkcija_BrojProdavnicaNadredjenog(5) as 'Broj prodavnica'

--Regionalni Direktor kao Menadzer prodavnice
select dbo.Funkcija_BrojProdavnicaNadredjenog(2) as 'Broj prodavnica'

--Aranzer
select dbo.Funkcija_BrojProdavnicaNadredjenog(2) as 'Broj prodavnica'

--Administrator
select dbo.Funkcija_BrojProdavnicaNadredjenog(14) as 'Broj prodavnica'





/********************  Funkcija 2  ************************

	Funkcija koja za prosledjnu sifru akcije vraca stanje akcije:
	1. Akcija je prosla
	2. Akcija trenutno traje
	3. Akcija treba da pocne
	4. Akcija ne postoji 

************************************************************/
if OBJECT_ID('Funkcija_AktivnostAkcije','FN')is not null
	drop function Funkcija_AktivnostAkcije
go

create function Funkcija_AktivnostAkcije
(
	@sifraAkcije as int
)
returns varchar(100)
as
begin
	declare @StanjeAkcije as varchar(50);
	declare @PocetakAkcije as date
	declare @KrajAkcije as date

	set @PocetakAkcije=(select DATUM_POCETKA from Proizvod_u_Prodavnici.Akcija where SIF_AKCIJE=@sifraAkcije)
	set @KrajAkcije=(select DATUM_ZAVRSETKA from Proizvod_u_Prodavnici.Akcija where SIF_AKCIJE=@sifraAkcije)
	if exists (select * from Proizvod_u_Prodavnici.Akcija where SIF_AKCIJE=@sifraAkcije)
	begin
		if (
			(DATEPART(YEAR,@KrajAkcije)<DATEPART(YEAR,GETDATE())) or
			(DATEPART(YEAR,@KrajAkcije)=DATEPART(YEAR,GETDATE()) and DATEPART(MONTH,@KrajAkcije)<DATEPART(MONTH,GETDATE())) or
			(DATEPART(YEAR,@KrajAkcije)=DATEPART(YEAR,GETDATE()) and DATEPART(MONTH,@KrajAkcije)=DATEPART(MONTH,GETDATE()) and DATEPART(DAY,@KrajAkcije)<DATEPART(DAY,GETDATE()))
			)
		begin 
			set @StanjeAkcije='Akcija je prosla';
		end
		else if(
			(DATEPART(YEAR,@PocetakAkcije)>DATEPART(YEAR,GETDATE())) or
			(DATEPART(YEAR,@PocetakAkcije)=DATEPART(YEAR,GETDATE()) and DATEPART(MONTH,@PocetakAkcije)>DATEPART(MONTH,GETDATE())) or
			(DATEPART(YEAR,@PocetakAkcije)=DATEPART(YEAR,GETDATE()) and DATEPART(MONTH,@PocetakAkcije)=DATEPART(MONTH,GETDATE()) and DATEPART(DAY,@PocetakAkcije)>DATEPART(DAY,GETDATE()))
			)
		begin
			set @StanjeAkcije='Akcija treba da pocne';
		end
		else if(
			(DATEPART(YEAR,@PocetakAkcije)<DATEPART(YEAR,GETDATE())) or
			(DATEPART(YEAR,@PocetakAkcije)=DATEPART(YEAR,GETDATE()) and DATEPART(MONTH,@PocetakAkcije)<DATEPART(MONTH,GETDATE())) or
			(DATEPART(YEAR,@PocetakAkcije)=DATEPART(YEAR,GETDATE()) and DATEPART(MONTH,@PocetakAkcije)=DATEPART(MONTH,GETDATE()) and DATEPART(DAY,@PocetakAkcije)>=DATEPART(DAY,GETDATE()))
			and
			(DATEPART(YEAR,@KrajAkcije)>DATEPART(YEAR,GETDATE())) or
			(DATEPART(YEAR,@KrajAkcije)=DATEPART(YEAR,GETDATE()) and DATEPART(MONTH,@KrajAkcije)>DATEPART(MONTH,GETDATE())) or
			(DATEPART(YEAR,@KrajAkcije)=DATEPART(YEAR,GETDATE()) and DATEPART(MONTH,@KrajAkcije)=DATEPART(MONTH,GETDATE()) and DATEPART(DAY,@KrajAkcije)>=DATEPART(DAY,GETDATE()))
		)
		begin
			set @StanjeAkcije='Akcija trenutno traje';
		end
	end
	else 
		set @StanjeAkcije='Akcija ne postoji';
	return @StanjeAkcije;
end
go

/***********************  TEST  *******************************/

--Akcija je prosla
select dbo.Funkcija_AktivnostAkcije(1)

--Akcija treba da pocne
select dbo.Funkcija_AktivnostAkcije(2)

--Akcija trenutno traje
select dbo.Funkcija_AktivnostAkcije(3)

--Akcija ne postoji
select dbo.Funkcija_AktivnostAkcije(10)

