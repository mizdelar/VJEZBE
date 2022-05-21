drop database if exists autopraonica;
create database autopraonica;
use autopraonica;

create table auti(
    boja varchar(50),
    velicina varchar(50),
    namjena varchar(50),
    brojputnika varchar(50)
);

create table zaposlenik(
    ime varchar(50),
    prezime varchar(50),
    oib varchar(50),
    visinaplace varchar(50),
    spol varchar(50),
    brojdjece varchar(50)
);

create table prostor(
    cijenanajma varchar(50),
    povrsina varchar(50),
    brojauta varchar(50),
    iznosrezija varchar(50)
);
