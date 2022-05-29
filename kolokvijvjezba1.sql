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
    sifra int not null primary key auto_increment,
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




insert into sestra (sifra,introvertno,haljina,maraka,hlace,narukvica)
values (null,false,'Ljetna',299.99,'Traper',not null);

insert into zena (sifra,treciputa,hlace,kratkamajica,jmbag,bojaociju,haljina,sestra)
values (null,'1988-12-12','Turske','Soliver',11111111111,'Zelena','Valovita',1);

insert into muskarac (sifra,bojaociju,hlace,modelnaocala,maraka,zena)
values (null,'Crna','Tailor','Bezokvira',199.99,1);

insert into zena (sifra,treciputa,hlace,kratkamajica,jmbag,bojaociju,haljina,sestra)
values (null,'1999-12-12','Talijanske','Orsay',22222222222,'Smeđa','Ravna',1);

insert into muskarac (sifra,bojaociju,hlace,modelnaocala,maraka,zena)
values (null,'Crna','Tailor','Bezokvira',199.99,2);

insert into zena (sifra,treciputa,hlace,kratkamajica,jmbag,bojaociju,haljina,sestra)
values (null,'2002-12-12','Albanske','Nike',33333333333,'Vatrena','Okrugla',1);

insert into muskarac (sifra,bojaociju,hlace,modelnaocala,maraka,zena)
values (null,'Smeđa','Caprio','Sportske',99.99,3);

insert into svekar (sifra,bojaociju,prstena,dukserica,lipa,eura,majica)
values (null,'Plava',not null,'Moderna',45.99,23.99,'Bezrukava');

insert into sestra_svekar (sifra,sestra,svekar)
values (null,1,1);

insert into svekar (sifra,bojaociju,prstena,dukserica,lipa,eura,majica)
values (null,'Zelena',not null,'Kratka',23.99,12.23,'Duga');

insert into sestra (sifra,introvertno,haljina,maraka,hlace,narukvica)
values (null,false,'Baraba',15.99,'Tekstil',not null);


insert into sestra_svekar (sifra,sestra,svekar)
values (null,2,2);

insert into sestra_svekar (sifra,sestra,svekar)
values (null,1,2);


insert into punac (sifra,ogrlica,gustoca,hlace)
values (null,not null,34.34,'Poluduge');


insert into cura (sifra,novcica,gustoca,lipa,ogrlica,bojakose,suknja,punac)
values (null,19.99,12.12,12.23,not null,'Crna','Duga',1);

insert into cura (sifra,novcica,gustoca,lipa,ogrlica,bojakose,suknja,punac)
values (null,19.99,12.12,12.23,not null,'Žuta','Kratka',1);

update cura set gustoca=15.77 where sifra=1 or sifra=2;

insert into mladic (sifra,suknja,kuna,drugiputa,asocijalno,ekstroventno,dukserica,muskarac)
values (null,'Plava',9.99,'2002-02-02',false,false,'Moderna',1);

insert into mladic (sifra,suknja,kuna,drugiputa,asocijalno,ekstroventno,dukserica,muskarac)
values (null,'Zelena',20.99,'2002-02-02',false,false,'Klasična',2);

delete from mladic where kuna>15.78;

select kratkamajica from zena where hlace like '%ana%';

select dukserica from svekar;

select * from sestra where haljina like '%ba%';

select * from zena where hlace like 'a%';






