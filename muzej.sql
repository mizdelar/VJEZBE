drop database if exists muzej;
create database muzej;
use muzej;

create table izlozba(
    nazivizlozbe varchar(50),
    trajanjeizlozbe varchar(50),
    cijenaulaznicezaizlouzbu varchar(50),
    brojizlozbiumuzeju varchar(50)
);

create table djelo(
    naziv varchar(50),
    autor varchar(50),
    tema varchar(50),
    brojdjelapoizlozbi varchar(50)
);

create table kustos(
    ime varchar(50),
    prezime varchar(50),
    oib varchar(50),
    visinaplace varchar(50),
    brojizlozbipokustosu varchar(50),
    duljinaradnogvremena varchar(50)
);