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

insert into nadredeni (sifra,ime,prezime,titula) values
(null,'Pero','Svrakić','Biskup'),
(null,'Marin','Božanić','Kardinal');

insert into svecenik (sifra,ime,prezime,nadredeni) values
(null,'Slavko','Slavuj',1),
(null,'Mirko','Mirković',1),
(null,'Josip','Josipović',2),
(null,'Karlo','Karlović',2);

insert into posao (sifra,vrsta,trajanje) values
(null,'Ciščenje',2),
(null,'Vrt',4),
(null,'Pranje suđa',1),
(null,'Kuhanje',2);

insert into svecenikposao (svecenik,posao) values
(1,3),
(2,1),
(4,2),
(2,4);