# c:\xampp\mysql\bin\mysql -uroot < c:\users\mzdel\documents\github\mizdelar\domacezadace\samostan2.sql

drop database if exists samostan2;
create database samostan2;
use samostan2;

create table svecenik(
    sifra int not null primary key auto_increment,
    osoba int not null,
    poslovikojeobavlja varchar(50),
    visinaplace decimal(18,2) not null
);

create table posao(
    sifra int not null primary key auto_increment,
    duljinatrajanjaposla varchar(50),
    brojsvecenikapoposlu varchar(50),
    ktegorijateineposla varchar(50)

);

create table nadredjenisvecenik(
    sifra int not null primary key auto_increment,
    osoba int not null,
    struka varchar(50),
    strucnasprema varchar(50)
);

create table osoba(
    sifra int not null primary key auto_increment,
    ime varchar(50),
    prezime varchar(50),
    oib varchar(50),
    email varchar(50)

) ;

alter table svecenik add foreign key (osoba) references osoba(sifra);
alter table nadredjenisvecenik add foreign key (osoba) references osoba(sifra);
