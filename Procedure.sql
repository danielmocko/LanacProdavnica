
/****************  PROCEDURA 1  ***************

	Procedura koja ne dozvoljava da prilikom unosa torke u prodavnicu nadredjeni bude zaduzen za 
	prodavnicu koja pripada regionionu za koje on nije zaduzen

***************************************************/

if OBJECT_ID('Proizvod_u_Prodavnici.NadredjeniProdavnica','P')is not null
	drop procedure Proizvod_u_Prodavnici.NadredjeniProdavnica
go
create procedure Proizvod_u_Prodavnici.NadredjeniProdavnica
	
	@SIF_PRODAVNICE as int,
	@ADRESA as varchar(100),
	@KONTAKT_TELEFON as varchar(20),
	@POVRSINA as numeric(6,2),
	@RADNOVREME_RD as varchar(12),
	@RADNOVREME_SUBOTA as varchar(12),
	@RADNOVREME_NEDELJA as varchar(12),
	@SIF_GRADA as int,
	@ARANZER as int,
	@ADMINISTRATOR as int,
	@MENADZER as int
as 
begin
	declare @Radno_Mesto as varchar(80);
	set @Radno_Mesto=(select RADNO_MESTO from Radnik.Zaposleni where SIF_Z=@ARANZER);

	declare @msg varchar(400);
	--provera da li odgovara pozicija radnom mestu, npr. aranzer u prodavnici moze biti samo aranzer, ne neko drugi
	if(@Radno_Mesto not like 'Aranzer' and @Radno_Mesto is not null)
	begin
		set @msg =('Radno mesto ovog radnika je '+@Radno_Mesto+', a na ovom radnom mestu se trazi Aranzer');
		THROW 50000, @msg ,1;
	end

	set  @Radno_Mesto=(select RADNO_MESTO from Radnik.Zaposleni where SIF_Z=@ADMINISTRATOR);
	if(@Radno_Mesto not like 'Administrator' and @Radno_Mesto is not null)
	begin
		set @msg=('Radno mesto ovog radnika je '+@Radno_Mesto+',a na ovom radnom mestu se trazi Administrator');
		THROW 50000,@msg,1;
	end

	set  @Radno_Mesto=(select RADNO_MESTO from Radnik.Zaposleni where SIF_Z=@MENADZER);
	if(@Radno_Mesto not like 'Regionalni Menadzer' and @Radno_Mesto not like 'Regionalni Direktor' and @Radno_Mesto is not null)
	begin
		set @msg=('Radno mesto ovog radnika je '+@Radno_Mesto+',a na ovom radnom mestu se trazi Regionalni Direktor ili Regionalni Menadzer');
		THROW 50000, @msg ,1;
	end

	declare @region_Grada as int;
	set @region_Grada=(select SIF_REGION from Proizvod_u_Prodavnici.Grad where SIF_GRAD=@SIF_GRADA)
	
	declare @sif_Region as int;
	set @sif_Region =(select SIF_REGION from Radnik.Nadredjeni where SIF_Z=@ARANZER);
	if((@sif_Region <> @region_Grada) and @sif_Region is not null)
	begin
		set @msg =('Aranzer nije zaduzen za region u kojem se nalazi prodavnica, prodavnica se nalazi u regionu '+cast(@region_Grada as varchar(10)));
		THROW 50000, @msg ,1;
	end

	set @sif_Region =(select SIF_REGION from Radnik.Nadredjeni where SIF_Z=@ADMINISTRATOR);
	if((@sif_Region <> @region_Grada) and @sif_Region is not null)
	begin
		set @msg =('Administrator nije zaduzen za region u kojem se nalazi prodavnica, prodavnica se nalazi u regionu '+cast(@region_Grada as varchar(10)));
		THROW 50000, @msg ,1;
	end

	set @sif_Region =(select SIF_REGION from Radnik.Nadredjeni where SIF_Z=@MENADZER);
	if((@sif_Region <> @region_Grada) and @sif_Region is not null)
	begin
		set @msg =('Menadzer nije zaduzen za region u kojem se nalazi prodavnica, prodavnica se nalazi u regionu '+cast(@region_Grada as varchar(10)));
		THROW 50000, @msg ,1;
	end

	insert into Proizvod_u_Prodavnici.Prodavnica (SIF_PRODAVNICE,ADRESA,KONTAKT_TELEFON,POVRSINA,RADNOVREME_RD,RADNOVREME_SUBOTA,RADNOVREME_NEDELJA,SIF_GRADA,ARANZER,ADMINISTRATOR,MENADZER)
	values (@SIF_PRODAVNICE,@ADRESA,@KONTAKT_TELEFON,@POVRSINA,@RADNOVREME_RD,@RADNOVREME_SUBOTA,@RADNOVREME_NEDELJA,@SIF_GRADA,@ARANZER,@ADMINISTRATOR,@MENADZER)

	
end 
go

/*********     TEST     ***********/

--Radno mesto nije aranzer 
exec Proizvod_u_Prodavnici.NadredjeniProdavnica 10,'Arsenije Carnojevica 45','022/ 223-626',5,'8:00-22:00','8:00-20:00','08:00-15:00',4,24,11,2

--Radno mesto nije administrator
exec Proizvod_u_Prodavnici.NadredjeniProdavnica 10,'Arsenije Carnojevica 45','022/ 223-626',5,'8:00-22:00','8:00-20:00','08:00-15:00',4,14,21,2

--Radno mesto nije Regionalni Direktor ili Regionalni Menadzer
exec Proizvod_u_Prodavnici.NadredjeniProdavnica 10,'Arsenije Carnojevica 45','022/ 223-626',5,'8:00-22:00','8:00-20:00','08:00-15:00',4,14,11,30

--Aranzer nije zaduzen za odgovarajuci region
exec Proizvod_u_Prodavnici.NadredjeniProdavnica 10,'Arsenije Carnojevica 45','022/ 223-626',5,'8:00-22:00','8:00-20:00','08:00-15:00',4,13,11,2

--Administrator nije zaduzen za odgovarajuci region
exec Proizvod_u_Prodavnici.NadredjeniProdavnica 10,'Arsenije Carnojevica 45','022/ 223-626',5,'8:00-22:00','8:00-20:00','08:00-15:00',4,14,9,6

--Administrator nije zaduzen za odgovarajuci region
exec Proizvod_u_Prodavnici.NadredjeniProdavnica 10,'Arsenije Carnojevica 45','022/ 223-626',5,'8:00-22:00','8:00-20:00','08:00-15:00',4,14,11,6

--unosi torku
exec Proizvod_u_Prodavnici.NadredjeniProdavnica 10,'Arsenije Carnojevica 45','022/ 223-626',5,'8:00-22:00','8:00-20:00','08:00-15:00',4,14,11,2

--Brisanje unete troke torke 
DELETE FROM Proizvod_u_Prodavnici.Prodavnica 
where SIF_PRODAVNICE=10

--unosi torku ako su aranzer,administrator i menadzer null
exec Proizvod_u_Prodavnici.NadredjeniProdavnica 10,'Arsenije Carnojevica 45','022/ 223-626',5,'8:00-22:00','8:00-20:00','08:00-15:00',4,null,null,null





/************************  PROCEDURA 2 ********************
	Procedura koja za prosledjenu sifru skladista ispisuje proizvode na sledeci nacin:
	U skladistu sa sifrom [SIF_SKLADISTA] na lokaciji [LOKACIJA] se nalaze sledeci proizvodi:

	[REDNI BROJ], [SIFRA PROIZVODA],[NAZIV],[KOLICINA],[KOMERCIJALANA CENA],[KATEGORIJA],[VRSTA]

	Kao i poruka o ukupnom broj proizvoda

	Ukoliko u skladistu nema proizvoda ispisuje se poruka 'U skladistu ne ne nalazi ni jedan proizvod!'

	Ukoliko ne postoji skladiste ispisuje se poruka 'Ne postoji skladiste sa sifrom [SIF_SKLADISTA]'


******************************************************************/


if OBJECT_ID('Transport_Skladiste_Prodavnica.PregledProizvodaSkladista','P')is not null
	drop procedure Transport_Skladiste_Prodavnica.PregledProizvodaSkladista
go
create procedure Transport_Skladiste_Prodavnica.PregledProizvodaSkladista
	@SIF_SKLADISTA as int
as
begin 

	
	declare	@rbr as int,
			@sif_proizvoda as int,
			@naziv as varchar(60),
			@kolicina as numeric(4,0),
			@kategorija as varchar(60),
			@cena as money,
			@vrsta as varchar(60),
			@akcija as date,
			@lokacija as varchar(100),
			@brojProizvoda as int;
	
	if exists(select* from Transport_Skladiste_Prodavnica.Skladiste where SIF_SKLADISTA=@SIF_SKLADISTA)
	begin
		
		set @brojProizvoda= (select count(*) from Transport_Skladiste_Prodavnica.SkladisteStanje where SIF_SKLADISTA=@SIF_SKLADISTA)

		if(@brojProizvoda>0)
		begin
			set @rbr=1;
			set @lokacija=(select LOKACIJA from Transport_Skladiste_Prodavnica.Skladiste where SIF_SKLADISTA=@SIF_SKLADISTA)
			print('U skladistu sa sifrom '+cast(@SIF_SKLADISTA as varchar(10))+' na lokaciji '+@lokacija+' se nalaze sledeci proizvodi:');

			declare cursor_skladiste cursor fast_forward for
				select ss.SIF_PROIZVODA,NAZIV_PROIZVODA,KOLICINA,KOMERCIJALNA_CENA,KATEGORIJA,VRSTA
				from  Transport_Skladiste_Prodavnica.SkladisteStanje ss 
					inner join Proizvod_u_Prodavnici.Proizvod p on (ss.SIF_PROIZVODA=p.SIF_PROIZVODA)
			
				where ss.SIF_SKLADISTA=@SIF_SKLADISTA

			open cursor_skladiste;
		
			fetch next from cursor_skladiste into @sif_proizvoda,@naziv,@kolicina,@cena,@kategorija,@vrsta;

			while @@FETCH_STATUS=0
			begin
				print(cast(@rbr as varchar(10))+', sifra: '+cast(@sif_proizvoda as varchar(10))+', naziv: '+@naziv+', kolicina: '+cast(@kolicina as varchar(10))+
				', prodajna cena: '+cast(@cena as varchar(10))+', kategorija: '+@kategorija +', vrsta: '+@vrsta);

				fetch next from cursor_skladiste into @sif_proizvoda,@naziv,@kolicina,@cena,@kategorija,@vrsta;
				set @rbr=@rbr+1;
			end

			close cursor_skladiste

			deallocate cursor_skladiste;

			print('Ukupno proizvoda: '+ cast(@brojProizvoda as varchar(10)))

			end
			else
				print('U skladistu ne ne nalazi ni jedan proizvod!')

	end
	else
		print('Ne postoji skladiste sa sifrom '+cast(@SIF_SKLADISTA as varchar(10)));

end
go

/***********************  TEST  *****************************/

--nepostojece skladiste
exec Transport_Skladiste_Prodavnica.PregledProizvodaSkladista 4

--postojece skladiste
exec Transport_Skladiste_Prodavnica.PregledProizvodaSkladista 2





