drop database if exists zadatak11;

create database zadatak11;

use zadatak11;

create table student(
sifra int not null primary key auto_increment,
ime varchar(30) not null,
prezime varchar(30) not null
);

create table rok(
sifra int not null primary key auto_increment,
datum varchar(30) not null,
vrijeme varchar(30) not null
);

create table rokstudent(
rok int not null,
student int not null
);

alter table rokstudent add foreign key (student) references student(sifra);
alter table rokstudent add foreign key (rok) references rok(sifra);