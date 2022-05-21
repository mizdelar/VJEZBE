# c:\xampp\mysql\bin\mysql -uroot < c:\users\mzdel\documents\github\mizdelar\domacezadace\vjezbe\zupanije2105final.sql


drop database if exists zupanije2105final;
create database zupanije2105final;
use zupanije2105final;

create table zupanija(
    sifra int not null primary key auto_increment,
    naziv varchar(50),
    zupan int not null

);

create table zupan(
    sifra int not null primary key auto_increment,
    ime varchar(50),
    prezime varchar(50)
);

create table opcina(
    sifra int not null primary key auto_increment,
    zupanija int not null,
    naziv varchar(50)
);

create table mjesto(
    sifra int not null primary key auto_increment,
    opcina int not null,
    naziv varchar(50)
);

alter table zupanija add foreign key (zupan) references zupan(sifra);
alter table opcina add foreign key (zupanija) references zupanija(sifra);
alter table mjesto add foreign key (opcina) references opcina(sifra);


insert into zupan (sifra,ime,prezime)
values (null,'Pero','Peric');

insert into zupan (sifra,ime,prezime)
values (null,'Mirko','Mirkic');

insert into zupan (sifra,ime,prezime)
values (null,'Misko','Miskic');

insert into zupanija (sifra,naziv,zupan)
values (null,'Osjecko-baranjska',1);

insert into zupanija (sifra,naziv,zupan)
values (null,'Brodsko-posavska',2);

insert into zupanija (sifra,naziv,zupan)
values (null,'Pozesko-slavonska',3);

insert into opcina (sifra,zupanija,naziv)
values (null,1,'Osijek');

insert into opcina (sifra,zupanija,naziv)
values (null,1,'Valpovo');

insert into opcina (sifra,zupanija,naziv)
values (null,2,'Zupanja');

insert into opcina (sifra,zupanija,naziv)
values (null,2,'Novagradiska');

insert into opcina (sifra,zupanija,naziv)
values (null,3,'Pozega');

insert into opcina (sifra,zupanija,naziv)
values (null,3,'Nasice');

insert into mjesto (sifra,opcina,naziv)
values (null,1,'Bilje');

insert into mjesto (sifra,opcina,naziv)
values (null,1,'Tenja');

insert into mjesto (sifra,opcina,naziv)
values (null,2,'Ivanovci');

insert into mjesto (sifra,opcina,naziv)
values (null,3,'Drenovci');

insert into mjesto (sifra,opcina,naziv)
values (null,6,'Zoljan');

insert into mjesto (sifra,opcina,naziv)
values (null,5,'Velika');

insert into mjesto (sifra,opcina,naziv)
values (null,6,'Velimirovac');

insert into mjesto (sifra,opcina,naziv)
values (null,5,'Duboka');

update mjesto set naziv='Kopacevo' where sifra=1;
update mjesto set naziv='Celije' where sifra=2;

update mjesto set naziv='Harkanovci' where sifra=3;

update mjesto set naziv='Soljani' where sifra=4;

update mjesto set naziv='Stipanovci' where sifra=7;

delete from mjesto where sifra=1;
delete from mjesto where sifra=4;

delete from mjesto where sifra=2;

delete from opcina where sifra=1;

delete from mjesto where sifra=3;




