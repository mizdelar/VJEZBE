# c:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8  < c:\users\mzdel\documents\github\mizdelar\domacezadace\vjezbe\kolokvijvjezba.sql


drop database if exists kolokvijvjezba;
create database kolokvijvjezba;
use kolokvijvjezba;

create table decko(
    sifra int not null primary key auto_increment,
    indifirentno bit,
    vesta varchar(34),
    asocijalno bit
);

create table prijatelj(
    sifra int not null primary key auto_increment,
    modelnaocala varchar(37),
    treciputa datetime,
    ekstrovertno bit,
    prviputa datetime,
    svekar int
);

create table cura(
    sifra int not null primary key auto_increment,
    haljina varchar(33),
    drugiputa datetime,
    suknja varchar(38),
    narukvica int,
    introvertno bit,
    majica varchar(40),
    decko int
);

create table decko_zarucnica(
    sifra int not null primary key auto_increment,
    decko int,
    zarucnica int
);

create table svekar(
    sifra int not null primary key auto_increment,
    stilfrizura varchar(48),
    ogrlica int,
    asocijalno bit
);

create table zarucnica(
    sifra int not null primary key auto_increment,
    narukvica int,
    bojakose varchar(37),
    novcica decimal(15,9),
    lipa decimal(15,8),
    indiferentno bit
);

create table brat(
    sifra int not null primary key auto_increment,
    suknja varchar(47),
    ogrlica int,
    asocijalno bit,
    neprijatelj int
);

create table neprijate(
    sifra int not null primary key auto_increment,
    majica varchar(32),
    haljina varchar(43),
    lipa decimal(16,8),
    modelnaocala varchar(49),
    kuna decimal(12,6),
    jmbag char(11),
    cura int
);

