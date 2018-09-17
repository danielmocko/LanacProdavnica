/*************  UPIT 1 ***************

	Izlistati podatke o zaposlenom kao i broj proizvoda koji su prodali:
	Sifra zaposlenog, Ime, Prezime, Plata, Broj karticem,Broj prodatih proizvoda

***************************************/

select  prodaja.SIF_Z,IME,PREZIME,PLATA,BR_KARTICE, count(SIF_PRODAJE) as 'Broj prodatih proizvoda'
from Radnik.Zaposleni zaposleni 
	left join Radnik.Prodavac prodavac on (zaposleni.SIF_Z=prodavac.SIF_Z)
	inner join Bonus.Prodaja prodaja on (prodavac.SIF_Z= prodaja.SIF_Z)
group by prodaja.SIF_Z,IME,PREZIME,PLATA,BR_KARTICE
order by count(SIF_PRODAJE) desc,SIF_Z asc

/*************  UPIT 2 ***************

	Upit koji izlistava podake o prodavnici na sledeci nacin:
	Sifra prodavnice, adresa prodavnice, ime i prezime Aranzera, ime i prezime Administratora, ime i prezime Menadzera prodavnice

***************************************/

select SIF_PRODAVNICE,prodavnica.ADRESA,
		zaposleniAranzer.IME+' '+zaposleniAranzer.PREZIME as 'Aranzer',
		zaposleniAdministrator.IME+' '+zaposleniAdministrator.PREZIME as 'Administrator',
		zaposleniMenadzer.IME+' '+zaposleniMenadzer.PREZIME as 'Menadzer',
		grad.NAZIV as 'Grad',
		region.NAZIV as 'REGION'
from Proizvod_u_Prodavnici.Prodavnica prodavnica 
	inner join Proizvod_u_Prodavnici.Grad grad on prodavnica.SIF_GRADA=grad.SIF_GRAD
	inner join Proizvod_u_Prodavnici.Region region on grad.SIF_REGION=region.SIF_REGION
	inner join Radnik.Nadredjeni administrator on prodavnica.ADMINISTRATOR=administrator.SIF_Z
	inner join Radnik.Nadredjeni aranzer on prodavnica.ARANZER=aranzer.SIF_Z
	inner join Radnik.Nadredjeni menadzer on prodavnica.MENADZER=menadzer.SIF_Z
	inner join Radnik.Zaposleni zaposleniAdministrator on administrator.SIF_Z=zaposleniAdministrator.SIF_Z
	inner join Radnik.Zaposleni zaposleniAranzer on aranzer.SIF_Z= zaposleniAranzer.SIF_Z
	inner join Radnik.Zaposleni zaposleniMenadzer on menadzer.SIF_Z=zaposleniMenadzer.SIF_Z
	

/*************  UPIT 3 ***************
	Upit koji izlistava podatke o proizvodu koji se trenutno nalazi na akciji i u kojoj je prodavnici on dosutpan:
	Sifra proizvoda, naziv proizvoda, komercijalna cena , cena na akciji, pocetak akcije, kraj akcije, sifra prodavnice,
	adresa prodavnice,kolicina proizvoda u prodavnici, adresa prodavnice, grad prodavnice

***************************************/

select proizvod.SIF_PROIZVODA,NAZIV_PROIZVODA,KOMERCIJALNA_CENA,proizAkc.CENA as 'Cena akcije',
	akcija.DATUM_POCETKA,akcija.DATUM_ZAVRSETKA,prodavnica.SIF_PRODAVNICE,proizProd.KOLICINA,
	prodavnica.ADRESA as 'Adresa prodavnice',grad.NAZIV as 'Grad'
from Proizvod_u_Prodavnici.Akcija akcija 
	inner join Proizvod_u_Prodavnici.ProizAkc proizAkc on akcija.SIF_AKCIJE= proizAkc.SIF_AKCIJE 
	inner join Proizvod_u_Prodavnici.Proizvod proizvod on proizAkc.SIF_PROIZVODA = proizvod.SIF_PROIZVODA
	inner join Proizvod_u_Prodavnici.ProizProd proizProd on proizvod.SIF_PROIZVODA = proizProd.SIF_PROIZVODA
	inner join Proizvod_u_Prodavnici.Prodavnica prodavnica on proizProd.SIF_PRODAVNICE=prodavnica.SIF_PRODAVNICE
	left join Proizvod_u_Prodavnici.Grad grad on prodavnica.SIF_GRADA=grad.SIF_GRAD
where GETDATE()>=akcija.DATUM_POCETKA and GETDATE()<=akcija.DATUM_ZAVRSETKA

/*************  UPIT 4 ***************
	Upit koji pikazuje podatke o proizvodima koji se trenutno nalaze u traspotru prema prodavnici:
	Sifra prodavnice, Adresa, Grad, Naziv proizvoda, Kolicina proizvoda,
	ime i prezime vozaca koji trenutno transportuje proizvod, 
	ime i prezime prodavca koji je obradio zahtev za proizvodom,
	ime i prezime prodavca koji je porucio odgovarajuci proizvod,
	Status isporuke 

***************************************/

select transport.SIF_PRODAVNICE,
	prodavnicaTrans.ADRESA,
	grad.NAZIV as 'Grad',
	proizvod.NAZIV_PROIZVODA,
	zahtev.KOLICINA,
	zapsolenVozac.IME+' '+zapsolenVozac.PREZIME as 'Vozac',
	zaposlenObradio.IME+' '+zaposlenObradio.PREZIME as 'Obradio',
	zaposleniZahtevao.IME+' '+zaposleniZahtevao.PREZIME as 'Porucio',
	transport.STATUS_ISPORUKE
	
from Transpor_Prodavnica_Prodavnica.TransportujeIzProdavnice transport 
	inner join Radnik.Vozac vozac on transport.SIF_Z=vozac.SIF_Z
	inner join Proizvod_u_Prodavnici.Prodavnica prodavnicaTrans on transport.SIF_PRODAVNICE= prodavnicaTrans.SIF_PRODAVNICE 
	inner join Proizvod_u_Prodavnici.Grad grad on prodavnicaTrans.SIF_GRADA=grad.SIF_GRAD
	inner join Radnik.Zaposleni zapsolenVozac on vozac.SIF_Z=zapsolenVozac.SIF_Z
	inner join Transpor_Prodavnica_Prodavnica.ObradjujeIzProdavnice obrada on transport.SIF_ZAHTEVA=obrada.SIF_ZAHTEVA
	inner join Radnik.Prodavac obradio on obrada.SIF_Z=obradio.SIF_Z
	inner join Radnik.Zaposleni zaposlenObradio on obradio.SIF_Z=zaposlenObradio.SIF_Z
	inner join Transpor_Prodavnica_Prodavnica.Zahtev zahtev on obrada.SIF_ZAHTEVA= zahtev.SIF_ZAHTEVA
	inner join Radnik.Prodavac zahtevao on zahtev.SIF_Z=zahtevao.SIF_Z
	inner join Radnik.Zaposleni zaposleniZahtevao on zahtevao.SIF_Z=zaposleniZahtevao.SIF_Z
	inner join Proizvod_u_Prodavnici.Proizvod proizvod on zahtev.SIF_PROIZVODA= proizvod.SIF_PROIZVODA
where STATUS_ISPORUKE like'U TRANSPORTU'
order by SIF_PRODAVNICE


/*************  UPIT 5 ***************
	
	Upitkoji izlistava podatke o zaposlenima koji su aranzeri u bar 2 prodavnice:
	Sifra zaposlenog, Ime i prezime Aranzera, broj prodavnica za koje je zaduzen

***************************************/

select zaposlen.SIF_Z, IME + ' '+PREZIME as 'Aranzer',count(SIF_PRODAVNICE) as 'Broj prodavnica'
from Proizvod_u_Prodavnici.Prodavnica prodavnica 
	inner join Radnik.Nadredjeni aranzer on prodavnica.ARANZER=aranzer.SIF_Z
	inner join Radnik.Zaposleni zaposlen on zaposlen.SIF_Z=aranzer.SIF_Z
group by zaposlen.SIF_Z, IME,PREZIME
having count(SIF_PRODAVNICE)>1
