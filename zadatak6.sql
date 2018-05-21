drop database if exists zadatak6;

create database zadatak6;

use zadatak6;

create table svecenik(
sifra int not null primary key auto_increment,
ime varchar(30) not null,
prezime varchar(30) not null,
nadredeni int
);

create table posao(
sifra int not null primary key auto_increment,
vrsta varchar(30),
trajanje int
);

create table nadredeni(
sifra int not null primary key auto_increment,
ime varchar(30) not null,
prezime varchar(30) not null,
titula varchar(30) not null
);

create table svecenikposao(
svecenik int not null,
posao int not null
);

alter table svecenikposao add foreign key (svecenik) references svecenik(sifra);
alter table svecenikposao add foreign key (posao) references posao(sifra);

alter table svecenik add foreign key (nadredeni) references nadredeni(sifra);