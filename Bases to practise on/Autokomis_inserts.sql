/*create database komiks
go 
use komiks;

create table Samochody
(
Nr_s			int identity(1,1) primary key,
Marka			varchar(15) NOT NULL,
Model			varchar(15) NOT NULL,
Pojemnosc		float NOT NULL,
Kolor			varchar(10) NOT NULL,
Rocznik			int NOT NULL,
Spalanie		float NOT NULL,
Nr_h			int NOT NULL
);

create table Sprzedaz
(
Nr_sp			int identity(1,1) primary key,
Nr_s			int NOT NULL,
Data_wys		date NOT NULL,
Cena_h			money NOT NULL,
Cena			money NOT NULL,
Nr_k			int,
Nr_pr			int,
Data_sp			date
);

create table Handlarze
(
Nr_h			int identity(1,1) primary key,
Nazwa			varchar(20) NOT NULL,
Ulica			varchar(15) NOT NULL,
Kod				varchar(15) NOT NULL,
Miasto			varchar(15) NOT NULL
);

create table Kierowcy
(
Nr_k			int identity(1,1) primary key,
Nazwisko		varchar(20) NOT NULL,
Imie			varchar(15) NOT NULL,
Ulica			varchar(15) NOT NULL,
Kod				varchar(6) NOT NULL,
Miasto			varchar(15) NOT NULL
);

create table Pracownicy
(
Nr_pr			int identity(1,1) primary key,
Imie			varchar(15) NOT NULL,
Nazwisko		varchar(20) NOT NULL,
Telefon			varchar(11),
Email			varchar(20)
);

go

alter table Sprzedaz add constraint Prk_to_Nr_pr foreign key(Nr_pr) references Pracownicy(Nr_pr)
alter table Sprzedaz add constraint Prk_to_Nr_k foreign key(Nr_k) references Kierowcy(Nr_k)
alter table Samochody add constraint Prk_to_Nr_h foreign key(Nr_h) references Handlarze(Nr_h)
alter table Sprzedaz add constraint Prk_to_Nr_s foreign key(Nr_s) references Samochody(Nr_s)
*/
--insert into Samochody (Marka,Model,Pojemnosc,Kolor,Rocznik,Spalanie,Nr_h) values ('Opel','Ignite',2.7,'czerwony',2137,0,1);
--insert into Handlarze (Nazwa,Ulica,Kod,Miasto) values ('Adam','S≥oneczna','88-888','£Ûdü');

--insert into Handlarze (Nazwa,Ulica,Kod,Miasto) values ('AutoCasher','Szybka','66-666','Speedtown');
--insert into Samochody (Marka,Model,Pojemnosc,Kolor,Rocznik,Spalanie,Nr_h) values ('Ford','Mustang',6.0,'Bia≥y',2019,40,2);
--insert into Handlarze
--select * from Samochody;
--select * from Handlarze;