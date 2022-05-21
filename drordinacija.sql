# c:\xampp\mysql\bin\mysql -uroot < c:\users\mzdel\documents\github\mizdelar\domacezadace\drordinacija.sql

drop database if exists drordinacija;
create database drordinacija;
use drordinacija;

create table doktor(
    sifra int not null primary key auto_increment,
    osoba int not null,
    visinaplace decimal(18,2) not null,
    struka varchar(50),
    radnaokolina varchar(50)

);

create table medsestra(
    sifra int not null primary key auto_increment,
    osoba int not null,
    visinaplace varchar(50),
    mjestorada varchar(50)
);

create table pacijent(
    sifra int not null primary key auto_increment,
    osoba int not null,
    spol varchar(50),
    nazivbolesti varchar(50),
    razlogdolaska varchar(50),
    nacindolaska varchar(50)
);

create table osoba(
    sifra int not null primary key auto_increment,
    ime varchar(50),
    prezime varchar(50),
    oib char(11),
    email varchar(50)

);


alter table doktor add foreign key (osoba) references osoba(sifra);
alter table medsestra add foreign key (osoba) references osoba(sifra);
alter table pacijent add foreign key (osoba) references osoba(sifra);


insert into osoba (ime,prezime,email,oib)
values ('djuro','peric','qw12@gmail.com',11111111111);
