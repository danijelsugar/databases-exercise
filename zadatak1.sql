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


insert into djelatnik (sifra,ime,prezime,oib) values
(null,'Marica','Marić','55631345678'),
(null,'Nikolina','Nikolić','88543256787'),
(null,'Maja','Majić','88065432567');

insert into korisnik (sifra,ime,prezime,oib,djelatnik) values
(null,'Marko','Markovic','87649873228',1),
(null,'Ivana','Pavić','4537789000',2),
(null,'Jelena','Proljeće','53224466789',3);

insert into usluga (sifra,cijena,trajanje,korisnik) values
(null,300,30,1),
(null,400,45,2),
(null,200,60,3);
