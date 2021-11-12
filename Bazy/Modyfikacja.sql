/*create database biblioteka
go
use biblioteka;

create table ksiazki2
(
Id				int,
Tytul			varchar(25),	
Rok_wyd			int,
Liczba_stron	int,
ISBN			varchar(22)
);
*/
--ALTER TABLE ksiazki2 ALTER COLUMN Id int NOT NULL;
--ALTER TABLE ksiazki2 ADD CONSTRAINT ksiazki2Id_key primary key (Id);
--ALTER TABLE ksiazki2 ADD CONSTRAINT KsiazkiCheckRok CHECK (Rok_wyd >= 2012);
--ALTER TABLE ksiazki2 ADD CONSTRAINT ksiazki2setdefault DEFAULT 200 FOR Liczba_stron;
--ALTER TABLE ksiazki2 ADD CONSTRAINT Ksiazki2SetUniqueIsbn UNIQUE (ISBN);
--insert into ksiazki2 (Id, Tytul,ISBN) values (2,'Pan Tadeusz',44),(2137,'Kremufki',2137);
--select * from ksiazki2;
--update ksiazki2 set liczba_stron=300 where id=2;
--delete from ksiazki2 where id=2;