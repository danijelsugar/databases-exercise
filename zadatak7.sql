drop database if exists zadatak7;

create database zadatak7 default character set utf8;

use zadatak7;

create table vozilo(
sifra int not null primary key auto_increment,
brojvozila int not null
);

create table vozac(
sifra int not null primary key auto_increment,
ime varchar(30) not null,
prezime varchar(30) not null,
oib varchar(11),
vozilo int not null
);

create table voznja(
sifra int not null primary key auto_increment,
cijena int not null,
brojvoznje int not null
);

create table putnik(
sifra int not null primary key auto_increment,
ime varchar(30) not null,
prezime varchar(30) not null,
vozac int
);

create table voznjaputnik(
voznja int not null,
putnik int not null
);

alter table voznjaputnik add foreign key (voznja) references voznja(sifra);
alter table voznjaputnik add foreign key (putnik) references putnik(sifra);

alter table putnik add foreign key (vozac) references vozac(sifra);

alter table vozac add foreign key (vozilo) references vozilo(sifra);