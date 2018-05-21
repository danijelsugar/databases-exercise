drop database if exists zadatak1;

create database zadatak1 default character set utf8;

use zadatak1;

create table djelatnik(
sifra int not null primary key auto_increment,
ime varchar(30) not null,
prezime varchar(30) not null,
oib varchar(11)
);

create table korisnik(
sifra int not null primary key auto_increment,
ime varchar(30) not null,
prezime varchar(30) not null,
oib varchar(11),
djelatnik int
);

create table usluga(
sifra int not null primary key auto_increment,
cijena int,
trajanje int,
korisnik int
);


alter table korisnik add foreign key (djelatnik) references djelatnik(sifra);
alter table usluga add foreign key (korisnik) references korisnik(sifra);
