drop database if exists zadatak5;

create database zadatak5 default character set utf8;

use zadatak5;

create table izlozba(
sifra int not null primary key auto_increment,
naziv varchar(30) not null
);

create table djelo(
sifra int not null primary key auto_increment,
naziv varchar(30) not null,
cijena int not null,
izlozba int not null
);

create table kustos(
sifra int not null primary key auto_increment,
ime varchar(30) not null,
prezime varchar(30) not null,
oib varchar(11),
izlozba int not null
);

create table sponzor(
sifra int not null primary key auto_increment,
naziv varchar(30) not null,
izlozba int not null
);

alter table djelo add foreign key (izlozba) references izlozba(sifra);

alter table kustos add foreign key (izlozba) references izlozba(sifra);

alter table sponzor add foreign key (izlozba) references izlozba(sifra);