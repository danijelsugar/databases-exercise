drop database if exists zadatak9;

create database zadatak9 default character set utf8;

use zadatak9;

create table sat(
sifra int not null primary key auto_increment,
marka varchar(30) not null,
korisnik int not null
);

create table korisnik(
sifra int not null primary key auto_increment,
ime varchar(30) not null,
prezime varchar(30) not null,
oib varchar(11)
);

create table popravak(
sifra int not null primary key auto_increment,
cijena int not null,
segrt int not null
);

create table segrt(
sifra int not null primary key auto_increment,
ime varchar(30) not null,
prezime varchar(30) not null
);

create table satpopravak(
sat int not null,
popravak int not null
);

alter table satpopravak add foreign key (sat) references sat(sifra);
alter table satpopravak add foreign key (popravak) references popravak(sifra);

alter table sat add foreign key (korisnik) references korisnik(sifra);

alter table popravak add foreign key (segrt) references segrt(sifra);