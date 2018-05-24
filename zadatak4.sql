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

insert into odgajatelj (sifra,ime,prezime,oib) values
(null,'Marija','Luda','00005643211'),
(null,'Vesna','Marić','55678904322'),
(null,'Miroslava','Ružić','34566554321');

insert into skupina (sifra,naziv,brojdjece,odgajatelj) values
(null,'skupina1',5,1),
(null,'skupina2',2,2),
(null,'skupina3',4,3);

insert into djeca (sifra,ime,prezime,oib,skupina) values
(null,'Pero','Marković','66543256890',1),
(null,'Mario','Jurić','55789043256',1),
(null,'Matko','Matković','55890004321',1),
(null,'Jure','Jurković','23457895432',1),
(null,'Mario','Čilić','66744321009',1),
(null,'Danijel','Brkić','44389076543',2),
(null,'Matej','Kralj','09877654326',2),
(null,'Lucija','Kić','55789345666',3),
(null,'Marta','Bek','88907862341',3),
(null,'Mirta','Mirić','22546789055',3),
(null,'Mirna','Nemirna','33156789065',3);