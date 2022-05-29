# c:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 c:\users\mzdel\documents\github\mizdelar\domacezadace\vjezbe\kolokvijvjezba1.sql

drop database if exists kolokvijvjezba1;
create database kolokvijvjezba1;
use kolokvijvjezba1;

create table sestra(
    sifra int not null primary key auto_increment,
    introvertno bit,
    haljina varchar(31),
    maraka decimal(16,6),
    hlace varchar(46),
    narukvica int

);

create table punac(
    sifra int not null primary key auto_increment,
    ogrlica int,
    gustoca decimal(14,9),
    hlace varchar(41)

);

create table zena(
    sifra int not null primary key auto_increment,
    treciputa datetime,
    hlace varchar(46),
    kratkamajica varchar(31),
    jmbag char(11),
    bojaociju varchar(39),
    haljina varchar(44),
    sestra int
);

create table cura(
    sifra int not null primary key auto_increment,
    novcica decimal(16,5),
    gustoca decimal(18,6),
    lipa decimal(13,10),
    ogrlica int,
    bojakose varchar(38),
    suknja varchar(36),
    punac int

);

create table sestra_svekar(
    sifra int not null primary key auto_increment,
    sestra int,
    svekar int
);

create table muskarac(
    sifra int not null primary key auto_increment,
    bojaociju varchar(50),
    hlace varchar(30),
    modelnaocala varchar(43),
    maraka decimal(14,5),
    zena int
);

create table svekar(
    sifra int not null primary key auto_increment,
    bojaociju varchar(40),
    prstena int,
    dukserica varchar(41),
    lipa decimal(13,8),
    eura decimal(12,7),
    majica varchar(35)


);

create table mladic(
    suknja varchar(50),
    kuna decimal(16,8),
    drugiputa datetime,
    asocijalno bit,
    ekstroventno bit,
    dukserica varchar(48),
    muskarac int
);

alter table zena add foreign key (sestra) references sestra(sifra);
alter table cura add foreign key (punac) references punac(sifra);
alter table sestra_svekar add foreign key (sestra) references sestra(sifra);
alter table sestra_svekar add foreign key (svekar) references svekar(sifra);
alter table muskarac add foreign key (zena) references zena(sifra);
alter table mladic add foreign key (muskarac) references muskarac(sifra);

insert into muskarac (sifra,bojaociju,hlace,modelnaocala,maraka,zena)
values (null,'Plava','Traper','Ljetne',299.99,1);

insert into zena (sifra,treciputa,hlace,kratkamajica,jmbag,bojaociju,haljina,sestra)
values (null,'1998-12-12','Turske','Soliver',11111111111,'zelena',1);


insert into sestra (sifra,introvertno,haljina,maraka,hlace,narukvica)
values (null,false,'Ljetna',299.99,'Traper','Dijamantna');

