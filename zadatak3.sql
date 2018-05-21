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