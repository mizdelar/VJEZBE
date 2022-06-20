# c:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < c:\users\mzdel\documents\github\mizdelar\domacezadace\kolokvij_vjezba_5.sql

drop database if exists kolokvij_vjezba_5;
create database kolokvij_vjezba_5;
use kolokvij_vjezba_5;

create table mladic(
    sifra int not null primary key auto_increment,
    kratkamajica varchar(48),
    haljina varchar(30),
    zarucnik int
);

create table zarucnik(
    sifra int not null primary key auto_increment,
    jmbag char(11),
    lipa decimal(12,8),
    indiferentno int
);

create table punac(
    sifra int not null primary key auto_increment,
    dukserica varchar(33),
    prviputa datetime,
    majica varchar(36),
    svekar int
);

create table svekar(
    sifra int not null primary key auto_increment,
    bojakose varchar(33),
    majica varchar(31),
    carape varchar(31),
    haljina varchar(43),
    narukvica int,
    eura decimal(14,5)
);

create table svekar_cura(
    sifra int not null primary key auto_increment,
    svekar int,
    cura int
);

create table cura(
    sifra int not null primary key auto_increment,
    carape varchar(41),
    maraka decimal(17,10),
    asocijalno bit,
    vesta varchar(47)

);

create table ostavljena(
    sifra int not null primary key auto_increment,
    majica varchar(33),
    ogrlica int,
    carape varchar(44),
    stilfrizura varchar(42),
    punica int
);

create table punica(
    sifra int not null primary key auto_increment,
    hlace varchar(43),
    nausnica int, 
    ogrlica int,
    vesta varchar(49),
    modelnaocala varchar (31),
    treciputa datetime,
    punac int
);

alter table mladic add foreign key (zarucnik) references zarucnik(sifra);
alter table punac add foreign key (svekar) references svekar(sifra);
alter table svekar_cura add foreign key (svekar) references svekar(sifra);
alter table svekar_cura add foreign key (cura) references cura(sifra);
alter table ostavljena add foreign key (punica) references punica(sifra);
alter table punica add foreign key (punac) references punac(sifra);

insert into svekar (sifra,bojakose,majica,carape,haljina,narukvica,eura)
values (null,'Zelena','Kratka','Sportske','Valovita',null,99.99);

insert into svekar (sifra,bojakose,majica,carape,haljina,narukvica,eura)
values (null,'Žuta','Duga','Casual','Ravna',null,9.99);

insert into svekar (sifra,bojakose,majica,carape,haljina,narukvica,eura)
values (null,'Crvena','Polukratka','Business','Poluvalovita',null,19.99);

insert into cura (sifra,carape,maraka,asocijalno,vesta)
values (null,'Bijele',9.99,null,'Zelena');

insert into cura (sifra,carape,maraka,asocijalno,vesta)
values (null,'Crne',19.99,null,'Žuta');

insert into cura (sifra,carape,maraka,asocijalno,vesta)
values (null,'Crvene',29.99,null,'Crvena');

insert into punac (sifra,dukserica,prviputa,majica,svekar)
values (null,'Zelena','2000-03-22','Kratka',1);

insert into punac (sifra,dukserica,prviputa,majica,svekar)
values (null,'Žuta','2000-06-22','Duga',1);

insert into punac (sifra,dukserica,prviputa,majica,svekar)
values (null,'Crvena','2000-05-22','Poluduga',1);

insert into punica (sifra,hlace,nausnica,ogrlica,vesta,modelnaocala,treciputa,punac)
values (null,'Kratke',null,null,'Duga','Ljetne','2022-12-21',1);

insert into punica (sifra,hlace,nausnica,ogrlica,vesta,modelnaocala,treciputa,punac)
values (null,'Duge',null,null,'Kratka','Zimske','2022-11-21',2);

insert into punica (sifra,hlace,nausnica,ogrlica,vesta,modelnaocala,treciputa,punac)
values (null,'Polukratke',null,null,'Poluduga','Proljetne','2022-10-21',3);

insert into svekar_cura (sifra,svekar,cura)
values (null,1,1);

insert into svekar_cura (sifra,svekar,cura)
values (null,2,2);

insert into svekar_cura (sifra,svekar,cura)
values (null,3,3);










