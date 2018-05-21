drop database if exists zadatak21;

create database zadatak21;

use zadatak21;

create table djete(
sifra int not null primary key auto_increment,
ime varchar(30) not null,
prezime varchar(30) not null,
oib varchar(11)
);

create table skupina(
sifra int not null primary key auto_increment,
naziv varchar(50) not null,
kapacitet int not null,
teta int
);

create table djeteskupina(
djete int not null,
skupina int not null
);

create table teta(
sifra int not null primary key auto_increment,
ime varchar(30),
prezime varchar(30),
oib varchar(11)
);

alter table djeteskupina add foreign key (djete) references djete(sifra);
alter table djeteskupina add foreign key (skupina) references skupina(sifra);

alter table skupina add foreign key (teta) references teta(sifra);