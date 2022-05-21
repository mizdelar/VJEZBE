# c:\xampp\mysql\bin\mysql -uroot < c:\users\mzdel\documents\github\mizdelar\domacezadace\firma2.sql

drop database if exists firma2;
create database firma2;
use firma2;

create table projekt(
    sifra int not null primary key auto_increment,
    naziv varchar(50) not null,
    cijena decimal(18,2) not null
);

create table programer(
    sifra int not null primary key auto_increment,
    ime varchar(50) not null,
    prezime varchar(50) not null,
    datumrodjenja datetime not null,
    placa decimal(18,2) not null
);

create table sudjeluje(
    sifra int not null primary key auto_increment,
    projekt int not null,
    programer int not null,
    datumpocetka datetime not null,
    datumkraja datetime not null
);

alter table sudjeluje add foreign key (projekt) references projekt(sifra);
alter table sudjeluje add foreign key (programer) references programer(sifra);

insert into projekt (naziv,cijena)
values ('elpros',5999.99);

insert into programer (ime,prezime,datumrodjenja,placa)
values ('Jozo','Smrtic','1986-07-21 21:21:21',5666.99);

insert into sudjeluje (projekt,programer,datumpocetka,datumkraja)
values (1,1,'2022-05-11','2022-05-11');

insert into programer (ime,prezime,datumrodjenja,placa)
values ('Pero','Peric','1987-09-12 12:12:12',8999.99);

insert into sudjeluje (projekt,programer,datumpocetka,datumkraja)
values (1,2,'2022-11-11','2011-12-11');

insert into programer (ime,prezime,datumrodjenja,placa)
values ('Stipo','Stipic','1990-12-03 13:13:13',3999.99 );

insert into projekt (naziv,cijena)
values ('gumiranje',8999.00);

insert into sudjeluje (projekt,programer,datumpocetka,datumkraja)
values (2,3,'2022-12-12','2023-12-12');