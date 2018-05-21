drop database if exists zadaca1;

create database zadaca1;

use zadaca1;


create table pitanje(
sifra int not null primary key auto_increment,
tekst varchar(100) not null,
datum datetime,
unio int
);

create table odgovor(
sifra int not null primary key auto_increment,
pitanje int,
tekst varchar(100) not null,
tocno boolean,
odgovorio int
);

create table operater(
sifra int not null primary key auto_increment,
ime varchar(30) not null,
prezime varchar(30) not null
);

alter table odgovor add foreign key (pitanje) references pitanje(sifra);
alter table odgovor add foreign key (odgovorio) references operater(sifra);

alter table pitanje add foreign key (unio) references operater(sifra);

/*1-2*/
insert into operater (sifra,ime,prezime) values
(null,'ime1','prezime'),
(null,'ime2','prezime');

/*1-7*/
insert into pitanje (sifra,tekst,datum,unio) values
(null,'tekst1','02-05-2018-',1),
(null,'tekst2','22-05-2018-',2),
(null,'tekst3','30-04-2018-',2),
(null,'tekst4','06-05-2018-',1),
(null,'tekst5','09-05-2018-',1),
(null,'tekst6','13-05-2018-',2),
(null,'tekst7','16-05-2018-',1);

insert into odgovor (sifra,pitanje,tekst,tocno,odgovorio) values
(null,1,'tekst',TRUE,2),
(null,2,'tekst',TRUE,1),
(null,3,'tekst',FALSE,2),
(null,4,'tekst',TRUE,1),
(null,5,'tekst',FALSE,1),
(null,6,'tekst',TRUE,2),
(null,7,'tekst',FALSE,2);



select * from operater;
select * from pitanje;
select * from odgovor;










