# c:\xampp\mysql\bin\mysql -uroot < c:\users\mzdel\documents\github\mizdelar\domacezadace\vjezbe\zupanije2105.sql

drop database if exists zupanije2105;
create database zupanije2105;
use zupanije2105;

create table zupanija(
    sifra int not null primary key auto_increment,
    naziv varchar(50) not null,
    zupan int not null

);

create table zupan(
    sifra int not null primary key auto_increment,
    ime varchar(50) not null,
    prezime varchar(50) not null

);

create table opcina(
    sifra int not null primary key auto_increment,
    zupanija int not null,
    naziv varchar(50) not null

);

create table mjesto(
    sifra int not null primary key auto_increment,
    opcina int not null,
    naziv varchar(50) not null
);

alter table zupanija add foreign key (zupan) references zupan(sifra);
alter table opcina add foreign key (zupanija)  references zupanija(sifra);
alter table mjesto add foreign key (opcina) references opcina(sifra);



insert into zupan (sifra,ime,prezime)
values (null,'Pero','Peric');

insert into zupanija (sifra,naziv,zupan)
values (null,'Osjecko-baranjska',1);

insert into zupan (sifra,ime,prezime)
values (null,'Stanko','Stanic');

insert into zupan (sifra,ime,prezime)
values (null,'Miro','Miric');

insert into zupan (sifra,ime,prezime)
values (null,'Djuro','Djuric');

insert into zupanija (sifra,naziv,zupan)
values (null,'Vukovarsko-srijemska',3);

insert into zupanija (sifra,naziv,zupan)
values (null,'Zagrebacka',2);

insert into opcina (sifra,zupanija,naziv)
values (null,2,'Sotin');

insert into opcina (sifra,zupanija,naziv)
values (null,3,'Sesvete');

insert into opcina (sifra,zupanija,naziv)
values (null,1,'Tenja');

insert into mjesto (sifra,opcina,naziv)
values (null,1,'Vucedol');

insert into mjesto (sifra,opcina,naziv)
values (null,2,'SesvetskiKraljevac');

insert into mjesto (sifra,opcina,naziv)
values (null,3,'StaraTenja');

update mjesto set naziv='Negoslavci' where sifra=1;

update mjesto set naziv='Buzin' where sifra=2;

update mjesto set naziv='Bilje' where sifra=3;



update zupan set ime='Mihael' where sifra=1;

update zupan set prezime='Zdelar' where sifra=1;

update zupan set ime='Miroslav',prezime='Miric' where sifra=2;

delete from mjesto where sifra=1;

delete from opcina where sifra=1;









