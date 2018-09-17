/*
	Triger koji za porudzbinu koja se obradi u tabli [ObradjujeIzSkladista] setuje njeno obelezje [AKTIVNA] 
	sa stanja ['DA'] na stanje ['NE'].
*/

if OBJECT_ID('Transport_Skladiste_Prodavnica.Trigger_ObradjujeIzSkladista','TR')is not null
	drop trigger Transport_Skladiste_Prodavnica.Trigger_ObradjujeIzSkladista
go

create trigger Transport_Skladiste_Prodavnica.Trigger_ObradjujeIzSkladista on Transport_Skladiste_Prodavnica.ObradjujeIzSkladista
after insert
as
begin
	declare @Sif_Porudzbine as int 
	set  @Sif_Porudzbine=(select SIF_PORUDZBINE from inserted)

	update Transport_Skladiste_Prodavnica.Porudzbina 
	set AKTIVNA='NE'
	where SIF_PORUDZBINE=@Sif_Porudzbine
end
go


/*************** TEST*****************/
select * from Transport_Skladiste_Prodavnica.Porudzbina where SIF_PORUDZBINE=2

insert into Transport_Skladiste_Prodavnica.ObradjujeIzSkladista(SIF_PORUDZBINE,SIF_Z,VREME_OBRADE)
values (2,39,'8-SEP-17')

select * from Transport_Skladiste_Prodavnica.Porudzbina where SIF_PORUDZBINE=2



/* 
	Triger koji na izmenu radnog mesta regulise platu zaposlenima ali samo onima koji pripadaju grupi Prodavaca a to su:
	Prodavac, Zamenik Menadzera Prodavca i Menadzer Prodavac. 
	Kriterijum za ragulaciju plate su :
		1. Ako je radno mesto [Prodavac] i zaposleni postane [Zamenik Menadzera Prodavca] potrebno je UVECATI platu od 5%
		2. Ako je radno mesto [Prodavac] i zaposleni postane [Menadzera Prodavac] potrebno je UVECATI platu od 10%
		3. Ako je radno mesto [Zamenik Menadzera Prodavca] i zaposleni postane [Prodavac\ potrebno je SMANJITI platu od 8%
		4. Ako je radno mesto [Zamenik Menadzera Prodavca] i zaposleni postane [Menadzera Prodavac] potrebno je UVECATI platu od 5%
		5. Ako je radno mesto [Menadzera Prodavac] i zaposleni postane [Prodavac] potrebno je SMANJITI platu od 12%
		6. Ako je radno mesto [Menadzera Prodavac] i zaposleni postane [Zamenik Menadzera Prodavca] potrebno je SMANJITI platu od 6%
*/
if object_id('Radnik.Trigger_Zaposleni','TR')is not null
	drop trigger Radnik.Trigger_Zaposleni
go

create trigger Radnik.Trigger_Zaposleni on Radnik.Zaposleni
after update
as
begin 
	declare @Radnik as int;
	set @Radnik=(select SIF_Z from inserted)

	declare @Radno_Mesto_staro as varchar(50);
	set @Radno_Mesto_staro = (select RADNO_MESTO from deleted);

	declare @Radno_Mesto_novo as varchar(50);
	set @Radno_Mesto_novo = (select RADNO_MESTO from inserted);

	if(@Radno_Mesto_staro like 'Prodavac')
	begin
		if(@Radno_Mesto_novo like 'Zamenik Menadzera Prodavca')
		begin 
			update Radnik.Zaposleni
			set PLATA=PLATA+PLATA*0.05
			where SIF_Z=@Radnik
		end
		if(@Radno_Mesto_novo like 'Menadzer Prodavac')
		begin 
			update Radnik.Zaposleni
			set PLATA=PLATA+PLATA*0.1
			where SIF_Z=@Radnik
		end
	end

	if(@Radno_Mesto_staro like 'Zamenik Menadzera Prodavca')
	begin
		if(@Radno_Mesto_novo like 'Prodavac')
		begin 
			update Radnik.Zaposleni
			set PLATA=PLATA-PLATA*0.08
			where SIF_Z=@Radnik
		end
		if(@Radno_Mesto_novo like 'Menadzer Prodavac')
		begin 
			update Radnik.Zaposleni
			set PLATA=PLATA+PLATA*0.05
			where SIF_Z=@Radnik
		end
	end

	if(@Radno_Mesto_staro like 'Menadzer Prodavac')
	begin
		if(@Radno_Mesto_novo like 'Prodavac')
		begin 
			update Radnik.Zaposleni
			set PLATA=PLATA-PLATA*0.12
			where SIF_Z=@Radnik
		end
		if(@Radno_Mesto_novo like 'Zamenik Menadzera Prodavca')
		begin 
			update Radnik.Zaposleni
			set PLATA=PLATA-PLATA*0.06
			where SIF_Z=@Radnik
		end
	end
end
go

/************* TESTE ***************/

--TEST 1
--update Prodavac na Zamenik Menadzera Prodavca
select RADNO_MESTO,PLATA from Radnik.Zaposleni where SIF_Z=32

update Radnik.Zaposleni
set RADNO_MESTO='Zamenik Menadzera Prodavca'
where SIF_Z=32

select RADNO_MESTO,PLATA from Radnik.Zaposleni where SIF_Z=32

--update Prodavac na Menadzer Prodavac
select RADNO_MESTO,PLATA from Radnik.Zaposleni where SIF_Z=33

update Radnik.Zaposleni
set RADNO_MESTO='Menadzer Prodavac'
where SIF_Z=33

select RADNO_MESTO,PLATA from Radnik.Zaposleni where SIF_Z=33

--TEST 2
--update Zamenik Menadzera Prodavca na Menadzer Prodavac
select RADNO_MESTO,PLATA from Radnik.Zaposleni where SIF_Z=32

update Radnik.Zaposleni
set RADNO_MESTO='Menadzer Prodavac'
where SIF_Z=32

select RADNO_MESTO,PLATA from Radnik.Zaposleni where SIF_Z=32

--update Menadzer Prodavac u Zamenik Menadzer Prodavca
select RADNO_MESTO,PLATA from Radnik.Zaposleni where SIF_Z=33

update Radnik.Zaposleni
set RADNO_MESTO='Zamenik Menadzera Prodavca'
where SIF_Z=33

select RADNO_MESTO,PLATA from Radnik.Zaposleni where SIF_Z=33


--TEST 3
--update  Menadzer Prodavac na Prodavac
select RADNO_MESTO,PLATA from Radnik.Zaposleni where SIF_Z=32

update Radnik.Zaposleni
set RADNO_MESTO='Prodavac'
where SIF_Z=32

select RADNO_MESTO,PLATA from Radnik.Zaposleni where SIF_Z=32

--update Zamenik Menadzera Prodavca  na Prodavac
select RADNO_MESTO,PLATA from Radnik.Zaposleni where SIF_Z=33

update Radnik.Zaposleni
set RADNO_MESTO='Prodavac'
where SIF_Z=33

select RADNO_MESTO,PLATA from Radnik.Zaposleni where SIF_Z=33