drop database if exists doktorskaordinacija;
create database doktorskaordinacija;
use doktorskaordinacija;

create table doktorskaordinacija(
    doktor varchar(50),
    pacijent varchar(50),
    maedicinskasestra varchar(50)
);