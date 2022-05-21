# c:\xampp\mysql\bin\mysql -uroot < c:\users\mzdel\documents\github\mizdelar\domacezadace\postolar2.sql

drop database if exists postolar2;
create database postolar2;
use postolar2;

create table obuca(
    sifra int not null primary key auto_increment,
    velicina int not null,
    materijal varchar(50),
    cijena decimal(18,2) not null,
    proizvodjac varchar(50),
    nacinizrade varchar(50),
    brojdolazakanapopravak varchar(50)
);

create table korisnik(
    sifra int not null primary key auto_increment,
    osoba int not null,
    brojdolazakakodpostolara varchar(50),
    vrstaobucekojudonosi varchar(50)
);

create table segrt(
    sifra int not null primary key auto_increment,
    osoba int not null,
    godinaradnogiskustva varchar(50),
    porijeklo varchar(50)

    
);

create table osoba(
    sifra int not null primary key auto_increment,
    ime varchar(50),
    prezime varchar(50),
    oib varchar(50),
    email varchar(50)

);

alter table korisnik add foreign key (osoba) references osoba(sifra);
alter table segrt add foreign key (osoba) references osoba(sifra);


insert into obuca (velicina,materijal,cijena)
values (45,'koza',99.99);