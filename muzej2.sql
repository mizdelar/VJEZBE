# c:\xampp\mysql\bin\mysql -uroot < c:\users\mzdel\documents\github\mizdelar\domacezadace\muzej2.sql

drop database if exists muzej2;
create database muzej2;
use muzej2;

create table izlozba(
    naziv int not null,
    imekustosa varchar(50),
    cijenaulaznice decimal(18,2) not null,
    trajanjeizlozbe varchar(50)
);

create table djelo(
    imaeautora varchar(50),
    nazivdjela varchar(50),
    temadjela varchar(50)

);

create table kustos(
    sifra int not null primary key auto_increment,
    osoba int not null,
    profesija varchar(50),
    spol varchar(50)
);

create table osoba(
    sifra int not null primary key auto_increment,
    ime varchar(50),
    prezime varchar(50),
    oib varchar(50),
    email varchar(50)
);


alter table kustos add foreign key (osoba) references osoba(sifra);


insert into izlozba(naziv,imekustosa,cijenaulaznice)
values (1,'djuro',99.99)