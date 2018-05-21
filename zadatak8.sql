drop database if exists zadatak8;

create database zadatak8;

use zadatak8;


create table korisnik(
sifra int not null primary key auto_increment,
ime varchar(30),
prezime varchar(30)
);

create table obuca(
sifra int not null primary key auto_increment,
velicina int,
korisnik int
);

create table popravak(
sifra int not null primary key auto_increment,
trajanje int,
cijena int,
segrt int
);

create table obucapopravak(
obuca int not null,
popravak int not null
);

create table segrt(
sifra int not null primary key auto_increment,
ime varchar(30),
prezime varchar(30)
);

alter table obuca add foreign key (korisnik) references korisnik(sifra); 

alter table obucapopravak add foreign key (obuca) references obuca(sifra);
alter table obucapopravak add foreign key (popravak) references popravak(sifra);

alter table popravak add foreign key (segrt) references segrt(sifra);