drop database if exists zadatak4;

create database zadatak4 default character set utf8;

use zadatak4;

create table odgajatelj(
sifra int not null primary key auto_increment,
ime varchar(30) not null,
prezime varchar(30) not null,
oib varchar(11)
);

create table djeca(
sifra int not null primary key auto_increment,
ime varchar(30) not null,
prezime varchar(30) not null,
oib varchar(11),
skupina int
);

create table skupina(
sifra int not null primary key auto_increment,
naziv varchar(30),
brojdjece int,
odgajatelj int
);

alter table djeca add foreign key (skupina) references skupina(sifra);
alter table skupina add foreign key (odgajatelj) references odgajatelj(sifra);