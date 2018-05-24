drop database if exists zadatak3;

create database zadatak3 default character set utf8;

use zadatak3;

create table osoba(
sifra int not null primary key auto_increment,
ime varchar(30) not null,
prezime varchar(30) not null,
oib varchar(11)
);

create table sticenik(
sifra int not null primary key auto_increment,
naziv varchar(30),
brojcipa int,
osoba int
);

create table prostor(
sifra int not null primary key auto_increment,
naziv varchar(30),
sticenik int 
);

alter table sticenik add foreign key (osoba) references osoba(sifra);
alter table prostor add foreign key (sticenik) references sticenik(sifra);

insert into osoba (sifra,ime,prezime,oib) values
(null,'Mario','Perić','88663218900'),
(null,'Luka','Modrić','54388976532'),
(null,'Danijel','Petrić','33668890543'),
(null,'Pero','Mikić','22446789054');

insert into sticenik (sifra,naziv,brojcipa,osoba) values
(null,'Scout',23,1),
(null,'Bobby',12,2),
(null,'Miki',2,4);

insert into prostor (sifra,naziv,sticenik) values
(null,'kavez1',2),
(null,'kavez2',1),
(null,'kavez3',3);