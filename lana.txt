create database lana
go
use lana;

create table Autorzy
(
Nr_a			int identity(1,1) primary key,
Imie			varchar(25),
Nazwisko		varchar(25)
);

create table Ksiazki
(
Nr_ks			int identity(1,1) primary key,
Tytul			varchar(60),
Rok				int,
Nr_a			int,
Gatunek			varchar(25),
Cena			money
);

create table Klienci
(
Nr_kl			int identity(1,1) primary key,
Imie			varchar(25),
Nazwisko		varchar(25),
Ulica			varchar(25),
Kod				varchar(6),
Miasto			varchar(25),
PESEL			varchar(16)
);

create table Wypozyczenia
(
Nr_wyp			int identity(1,1) primary key,
Nr_kl			int,
Nr_ks			int,
Data_wyp		datetime,
Data_odd		datetime
);

go

alter table Wypozyczenia add constraint Prk_to_Nr_kl foreign key(Nr_kl) references Klienci(Nr_kl)
alter table Wypozyczenia add constraint Prk_to_Nr_ks foreign key(Nr_ks) references Ksiazki(Nr_ks)
alter table Ksiazki add constraint Prk_to_Nr_a foreign key(Nr_a) references Autorzy(Nr_a)