# c:\xampp\mysql\bin\mysql -uroot < c:\users\mzdel\documents\github\mizdelar\domacezadace\zupanije2.sql

drop database if exists ustrojstvo;
create database ustrojstvo;
use ustrojstvo;

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
    mjesto int not null
);

alter table zupanija add foreign key (zupan) references zupan(sifra);
alter table opcina add foreign key (zupanija) references zupanija(sifra);
alter table mjesto add foreign key (mjesto) references mjesto(sifra);

insert into zupan (ime,prezime)
values ('Pero','Peric');

insert into zupanija (naziv,zupan)
values ('Osjeckobaranjska',1);

insert into zupan (ime,prezime)
values ('Mirko','Mirkic');

insert into zupanija (naziv,zupan)
values ('Vukovarskosrijemska',2);