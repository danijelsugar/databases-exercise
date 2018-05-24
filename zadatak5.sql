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

insert into izlozba (sifra,naziv) values
(null,'Izlozba1'),
(null,'Izlozba2'),
(null,'Izlozba3');

insert into djelo (sifra,naziv,cijena,izlozba) values
(null,'Djelo1',1500,1),
(null,'Djelo2',400,1),
(null,'Djelo3',220,2),
(null,'Djelo4',10000,2),
(null,'Djelo5',6500,3),
(null,'Djelo6',1100500,3);

insert into kustos (sifra,ime,prezime,oib,izlozba) values
(null,'Tomo','Hajduk','08754332156',1),
(null,'Martina','Kozić','55789436780',2),
(null,'Mirko','Janković','00875522145',3);

insert into sponzor (sifra,naziv,izlozba) values
(null,'Konzum',1),
(null,'HGSpot',2),
(null,'Edunova',3);