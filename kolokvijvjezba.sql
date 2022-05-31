# c:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8  < c:\users\mzdel\documents\github\mizdelar\domacezadace\vjezbe\kolokvijvjezba.sql


drop database if exists kolokvijvjezba;
create database kolokvijvjezba;
use kolokvijvjezba;

create table decko(
    sifra int not null primary key auto_increment,
    indiferentno bit,
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

create table neprijatelj(
    sifra int not null primary key auto_increment,
    majica varchar(32),
    haljina varchar(43),
    lipa decimal(16,8),
    modelnaocala varchar(49),
    kuna decimal(12,6),
    jmbag char(11),
    cura int
);


alter table prijatelj add foreign key (svekar) references svekar(sifra);
alter table cura add foreign key (decko) references decko(sifra);
alter table decko_zarucnica add foreign key (decko) references decko(sifra);
alter table decko_zarucnica add foreign key (zarucnica) references zarucnica(sifra);
alter table brat add foreign key (neprijatelj) references neprijatelj(sifra);
alter table neprijatelj add foreign key (cura) references cura(sifra);

insert into decko (sifra,indiferentno,vesta,asocijalno)
values (null,false,'Sarena',false);

insert into decko (sifra,indiferentno,vesta,asocijalno)
values (sifra,false,'Plava',false);

insert into decko (sifra,indiferentno,vesta,asocijalno)
values (sifra,false,'Zelena',false);

insert into cura (sifra,haljina,drugiputa,suknja,narukvica,introvertno,majica,decko)
values (null,'Duga','2022-12-12','Kratka',not null,false,'Soliver',1);

insert into cura (sifra,haljina,drugiputa,suknja,narukvica,introvertno,majica,decko)
values (null,'Poderana','2022-01-01','Valovita',not null,false,'Tailor',2);

insert into cura (sifra,haljina,drugiputa,suknja,narukvica,introvertno,majica,decko)
values (null,'Bezruba','2022-02-02','Markirana',not null,false,'Orsay',1);

insert into neprijatelj (sifra,majica,haljina,lipa,modelnaocala,kuna,jmbag,cura)
values (null,'Roza','Plava',12.99,'Moderne',15.99,11111111111,1);

insert into neprijatelj (sifra,majica,haljina,lipa,modelnaocala,kuna,jmbag,cura)
values (null,'Zuta','Oker',19.99,'Klasicne',99.99,22222222222,2);

insert into neprijatelj (sifra,majica,haljina,lipa,modelnaocala,kuna,jmbag,cura)
values (null,'Bijela','Crna',29.99,'Dioptrijske',59.99,33333333333,3);

insert into zarucnica (sifra,narukvica,bojakose,novcica,lipa,indiferentno)
values (null,not null,'Zelena',19.99,99.99,false);

insert into zarucnica (sifra,narukvica,bojakose,novcica,lipa,indiferentno)
values (null,not null,'Plava',9.99,199.99,false);

insert into zarucnica (sifra,narukvica,bojakose,novcica,lipa,indiferentno)
values (null,not null,'Crna',119.99,29.99,false);

insert into decko_zarucnica (sifra,decko,zarucnica)
values (null,1,1);

insert into decko_zarucnica (sifra,decko,zarucnica)
values (null,2,2);

insert into decko_zarucnica (sifra,decko,zarucnica)
values (null,3,3);


insert into svekar (sifra,stilfrizura,ogrlica,asocijalno)
values (null,'Bezkose',not null,false);


insert into prijatelj (sifra,modelnaocala,treciputa,ekstrovertno,prviputa,svekar)
values (null,'Dioptrijske','2022-12-12',false,'2011-11-11',1);

insert into prijatelj (sifra,modelnaocala,treciputa,ekstrovertno,prviputa,svekar)
values (null,'Zablizu','2022-11-11',false,'2011-12-12',1);

insert into prijatelj (sifra,modelnaocala,treciputa,ekstrovertno,prviputa,svekar)
values (null,'Zacitanje','2022-10-10',false,'2011-10-10',1);

update prijatelj set treciputa='2020-04-30' where sifra>=1;

insert into brat (sifra,suknja,ogrlica,asocijalno,neprijatelj)
values (null,'Zelena',not null,false,1);


delete from brat where not ogrlica=14;







