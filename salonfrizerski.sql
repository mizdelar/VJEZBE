# c:\xampp\mysql\bin\mysql -uroot < c:\users\mzdel\documents\github\mizdelar\domacezadace\salonfrizerski.sql

drop database if exists salonfrizerski;
create database salonfrizerski;
use salonfrizerski;

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
    brojuslugakojekoristi varchar(50)
);

create table usluga(
    cijena varchar(50),
    trajanjeusluge varchar(50),
    djelatnicausluge varchar(50),
    brojuslugapokorisniku varchar(50)
);