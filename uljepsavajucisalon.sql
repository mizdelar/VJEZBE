# c:\xampp\mysql\bin\mysql -uroot < c:\users\mzdel\documents\github\mizdelar\domacezadace\uljepsavajucisalon.sql

drop database if exists uljepsavajucisalon;
create database uljepsavajucisalon;
use uljepsavajucisalon;

create table djelatnica(
    ime varchar(50),
    prezime varchar(50),
    oib varchar(50),
    visinaplace varchar(50),
    duljinaradnogvremena varchar(50)
);

create table korisnik(
    ime varchar(50),
    prezime varchar(50),
    oib varchar(50),
    brojuslugakojekoristi varchar(50),
    spol varchar(50)
);

create table usluga(
    cijena varchar(50),
    trajanjeusluge varchar(50),
    brojuslugapokorisniku varchar(50)
);