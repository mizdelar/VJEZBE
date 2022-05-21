# c:\xampp\mysql\bin\mysql -uroot < c:\users\mzdel\documents\github\mizdelar\domacezadace\zupanije3.sql

drop database if exists zupanije3;
create database zupanije3;
use zupanije3;


create table zupanija(
    sifra int not null primary key auto_increment,
    naziv varchar(50),
    zupan  int not null

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
    naziv varchar(50)
);


alter table zupanija add foreign key (zupan) references zupan(sifra);
alter table opcina add foreign key (zupanija) references zupanija(sifra);
alter table mjesto add foreign key (opcina) references opcina(sifra);

insert into zupan (ime,prezime)
values ('Pero','Dijetlic');

insert into zupan (ime,prezime)
values ('Djuro','Djuric');

insert into zupan (ime,prezime)
values ('Marko','Markic');

insert into zupanija (naziv,zupan)
values ('Osjecko-baranjska',2);

insert into zupanija (naziv,zupan)
values ('Vukovarsko-srijemska',1);

insert into opcina (zupanija,naziv)
values (1,'Perinci');

insert into opcina (zupanija,naziv)
values (2,'Sredanci');

insert into mjesto (opcina,naziv)
values (2,'Mrdanci');