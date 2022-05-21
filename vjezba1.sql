
drop database if exists vjezba1;
create database vjezba1;
use vjezba1;

create table frizerskisalon(
    djelatnica varchar(50),
    korisnik varchar(50),
    usluga varchar(50)
);

create table salonzauljepsavanje(
    djelatnica varchar(50),
    korisnik varchar(50),
    usluga varchar(50)
);

create table udrugazazastituzivotinja(
    osoba varchar(50),
    zivotinja varchar(50),
    prostor varchar(50)
);

create table djecjivrtic(
    odgojnaskupina varchar(50),
    odgajateljica varchar(50),
    strucnasprema varchar(50)
);