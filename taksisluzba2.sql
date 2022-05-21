# c:\xampp\mysql\bin\mysql -uroot < c:\users\mzdel\documents\github\mizdelar\domacezadace\taksisluzba2.sql

drop database if exists taksisluzba2;
create database taksisluzba2;
use taksisluzba2;

create table vozilo(
    bojavozila varchar(50),
    brojputnikapovozilu varchar(50),
    proizvodjacvozila varchar(50),
    brojsasijevozila varchar(50)

);

create table vozac(
    ime varchar(50),
    prezime varchar(50),
    oib varchar(50),
    visinaplace varchar(50),
    spol varchar(50),
    godineradnogstaza varchar(50)
);

create table putnik(
    ime varchar(50),
    prezime varchar(50),
    oib varchar(50),
    spol varchar(50),
    duljinavoznjeputnika varchar(50)

);