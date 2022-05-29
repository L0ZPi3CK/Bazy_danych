create database nobel
go 
use nobel;

create table Kraje
(
Id_kr			int identity(1,1) primary key,
Nazwa			varchar(25) NOT NULL,
Stolica			varchar(20) NOT NULL,
Powierzchnia	float,
Id_kon			int
);

create table Kontynenty
(
Id_kon			int identity(1,1) primary key,
Nazwa			varchar(25) NOT NULL,
Powierzchnia	float
);

create table Dziedzina
(
Id_d			int identity(1,1) primary key,
Nazwa			varchar(15) NOT NULL
);

create table Prace_naukowcow
(
Id_prn			int identity(1,1) primary key,
Id_pr			int NOT NULL,
Id_n			int NOT NULL,
Data_pub		date NOT NULL
);

create table Naukowiec
(
Id_n			int identity(1,1) primary key,
Imie			varchar(25) NOT NULL,
Nazwisko		varchar(25) NOT NULL,
Id_kr			int NOT NULL
);

create table Praca_naukowa
(
Id_pr			int identity(1,1) primary key,
Tytul			varchar(25) NOT NULL,
Id_d			int NOT NULL,
Data_pub		date NOT NULL
);

create table Nagrody
(
Id_nag			int identity(1,1) primary key,
Id_pr			int NOT NULL unique,
Rok				int NOT NULL
);

go

alter table Naukowiec add constraint Prk_to_Id_kr foreign key(Id_kr) references Kraje(Id_kr)
alter table Kraje add constraint Prk_to_Id_kon foreign key(Id_kon) references Kontynenty(Id_kon)
alter table Praca_naukowa add constraint Prk_to_Id_d foreign key(Id_d) references Dziedzina(Id_d)
alter table Prace_naukowcow add constraint Prk_to_Id_n foreign key(Id_n) references Naukowiec(Id_n)
alter table Prace_naukowcow add constraint Prk_to_Id_pr foreign key(Id_pr) references Praca_naukowa(Id_pr)
alter table Nagrody add constraint Prk_to_Prk foreign key(Id_pr) references Praca_naukowa(Id_pr)