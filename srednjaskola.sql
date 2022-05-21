# c:\xampp\mysql\bin\mysql -uroot < c:\users\mzdel\documents\github\mizdelar\domacezadace\srednjaskola.sql

drop database if exists srednjaskola;
create database srednjaskola;
use srednjaskola;

create table razred(
    sifra int not null primary key auto_increment,
    naziv varchar(50),
    brojucenika int,
    vrstaskole varchar(50),
    gradskole varchar(50)
);
create table ucenik(
    sifra int not null primary key auto_increment,
    osoba int not null,
    razred varchar(50)
);

create table profesor(
    sifra int not null primary key auto_increment,
    osoba int not null,
    visinaplace decimal(18,2) not null,
    godradnogiskustva int
);

create table osoba(
    sifra int not null primary key auto_increment,
    ime varchar(50),
    prezime varchar(50),
    oib char(11)
);

alter table ucenik add foreign key (osoba) references osoba(sifra);
alter table profesor add foreign key (osoba) references osoba(sifra);

insert into osoba (ime,prezime,oib)
values ('Pero','Peric',11111111111);

insert into ucenik (osoba,razred)
values (1,'prvi');