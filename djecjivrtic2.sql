# c:\xampp\mysql\bin\mysql -uroot < c:\users\mzdel\documents\github\mizdelar\domacezadace\djecjivrtic2.sql

drop database if exists djecjivrtic2;
create database djecjivrtic2;
use djecjivrtic2;

create table odgojnaskupina(
    sifra int not null primary key auto_increment,
    nazivskupine varchar(50),
    brojdjeceuodgojnojskupini int not null,
    starosnadobdjece int not null
);

create table odgajateljica(
    sifra int not null primary key auto_increment,
    osoba int not null,
    visinaplace decimal(18,2) not null,
    strucnasprema int not null,
    trajanjeradnogvremena varchar(50)
);

create table strucnasprema(
    sifra int not null primary key auto_increment,
    osoba int not null,
    stupanjstrucnespreme varchar(50),
    brojstrucnihspremapoodgajateljici varchar(50),
    smjerstrucnespreme varchar(50)
);

create table osoba(
    sifra int not null primary key auto_increment,
    ime varchar(50),
    prezime varchar(50),
    oib varchar(50),
    email varchar(50)

);

alter table odgajateljica add foreign key (osoba) references osoba(sifra);
alter table odgajateljica add foreign key (strucnasprema) references strucnasprema(sifra); 

insert into odgojnaskupina (nazivskupine,brojdjeceuodgojnojskupini,starosnadobdjece)
values ('Tratincica',10,7);
