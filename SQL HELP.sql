-- ################################################################################################################################################################################

-- create database _______		|| Tworzenie bazy ______

-- drop database _______		|| Usuwanie bazy _____ 

-- go							|| Wykonanie poleceñ do tego miejsca

-- use ______;					|| U¿ycie bazy _______

-- create table _______();		|| Stworzenie tabeli _____ a w nawiasach ( dane o poszczególnych kolumnach i atrybytach)

-- drop table ________;			|| Usuwanie tabeli _____


-- ################################################################################################################################################################################

																			/* Typy zmiennych: *\

-- int							|| Liczby z zakresu -2,147,483,648 do 2,147,483,647
-- float						|| Liczby zmiennoprzecinkowe (Mo¿na ustalaæ precyzjê poprzez float(x), gdzie za x podajemy dok³adnoœæ po przecinku)
-- varchar(__)					|| Znaki, dla varchar(xx) xx- okreœla maksymaln¹ liczbê znaków jak¹ mo¿emy wprowadziæ
-- money						|| Pieni¹dze
-- date							|| Data YYYY-MM-DD
-- datetime						|| Data YYYY-MM-DD HH-MI-SS
*/

-- ################################################################################################################################################################################

																			/* Cechy kolumn które poznaliœmy: *\

-- identity(x,y)				|| Autonumerowanie, gdzie x oznacza liczbê od której zaczynamy numerowaæ a y przeskoki w numeracji (np dla (1,2) bêdzie to 1,3,5,7,9....
-- primary key					|| Ustawia kolumne jako klucz g³owny (Primary key automatycznie przypisuje Unique i NOT NULL (Klucz g³ówny musi byæ unikatowy i nie mo¿e byæ pusty)
-- NOT NULL						|| Kolumna nie mo¿e byæ pusta
-- Unique						|| Zapewnia ¿e wszystkie wartoœci w kolumnie s¹ ró¿ne
-- DEFAULT						|| Ustawia wartoœæ domyœln¹ (wiêcej przy u¿yciu poni¿ej)
-- CHECK						|| Ogranicza (wiêcej przy u¿yciu poni¿ej)
*/

-- ################################################################################################################################################################################

																			/* Operatory: *\

Arytmetyczne:
-- '+'					|| Suma
-- '-'					|| Ró¿nica
-- '*'					|| Iloczyn
-- '/'					|| Iloraz
-- '%'					|| Modulo

Logiczne:
-- 'AND'				|| "i" ( Do zastosowania przy warunkach, zastosowanie and oznacza ¿e oba MUSZ¥ byæ spe³nione)
-- 'OR'					|| "lub" (Do zastosowania przy warunkach, zastosowanie or oznacza ¿e przynajmniej jeden musi byæ spe³niony)
-- 'NOT'				|| "Nie" (Do zastosowania przy warunkach, zastosowanie not oznacza ¿e warunek nie mo¿e byæ spe³niony)

Porównania:
-- '='					|| Równoœæ
-- '<'					|| Mniejszoœæ
-- '>'					|| Wiêkszoœæ
-- '<='					|| Mniejszy LUB równy
-- '>='					|| Wiêkszy LUB równy
-- '<>'					|| Nie równy
-- '!='					|| Nie równy
*/

-- ################################################################################################################################################################################
-- ############################# Uwaga gdy wprowadzamy Litera³y (Czyli wartoœci do kolumn) to:	###################################################################################
-- ############################# Typy liczbowe maj¹ postaæ liczby:		111						###################################################################################
-- ############################# Ci¹gi znaków musz¹ byæ w apostrofach:	'Siema','Kraków'		###################################################################################
-- ############################# Typy daty musz¹ byæ w apostrofach:		'20-09-2012'			###################################################################################
-- ################################################################################################################################################################################



-- ********************************************************************************************************************************************************************************
-- ************************************************************************* Przed Stworzeniem Tabeli *****************************************************************************
-- ********************************************************************************************************************************************************************************


																			/* Tworzenie po³¹czeñ miêdzy tabelami w trakcie ich tworzenia *\
create table xxx
(
...
yyy		int REFERENCES xxy(yyx),
...
);

xxx			|| Nazwa Tabeli					(Wymyœlamy)
yyy			|| Nazwa kolumny				(Wymyœlamy)
int			|| Cechy kolumny				(Nadajemy)
xxy			|| Nazwa Drugiej Tabeli			(Bierzemy z bazy, a co z tego wynika Druga Tabela MUSI ju¿ istnieæ)
yyx			|| Nazwa Kolumny Drugiej Tabeli	(Bierzemy z bazy)
*/

-- ################################################################################################################################################################################

																			/* Definiowanie wartoœci domyœlnej podczas tworzenia tabeli *\
create table xxx
(
...
yyy		int NOT NULL DEFAULT ccc,
...
);

xxx			|| Nazwa Tabeli					(Wymyœlamy)
yyy			|| Nazwa kolumny				(Wymyœlamy)
int ...		|| Cechy kolumny				(Nadajemy)
ccc			|| Wartoœæ domyœlna				(W zale¿noœci od typu kolumny mo¿e byæ to tekst/liczba/data/...)
*/




-- ********************************************************************************************************************************************************************************
-- ************************************************************************* Po Stworzeniu Tabeli *********************************************************************************
-- ********************************************************************************************************************************************************************************

-- ################################################################################################################################################################################

																			/* Dodawanie relacji/po³¹czeñ po stworzeniu tabeli *\
-- Alter table xxx add constraint xxy foreign key(yyy) references yyx(yxx)

xxx			|| Nazwa Tabeli					(Bierzemy z bazy)
xxy			|| Nazwa Ograniczenia			(Wymyœlamy)
yyy			|| Nazwa kolumny z Tabeli xxx	(Bierzemy z bazy)
yyx			|| Nazwa Tabeli					(Bierzemy z bazy)
yxx			|| Nazwa kolumny z Tabeli yyx	(Bierzemy z bazy)
*/

-- ################################################################################################################################################################################

																			/* Zmiana cech kolumny: *\
--ALTER TABLE xxx ALTER COLUMN yyy zzzyyyxxx;

xxx			|| Nazwa Tabeli					(Bierzemy z bazy)
yyy			|| Nazwa kolumny z Tabeli xxx	(Bierzemy z bazy)
zzzyyyxxx	|| Nowe cechy kolumny np. int NOT NULL
*/

-- ################################################################################################################################################################################

																			/* Nadanie kolumnie cechy klucza g³ównego: *\
-- ALTER TABLE xxx ADD CONSTRAINT xxy primary key (yyy);
																!!! Wa¿ne - Kolumna której chcemy nadaæ cechy klucza g³ównego musi mieæ przypisany atrybut NOT NULL (no i typ oczywiœcie), dzia³a bez unique idk why
xxx			|| Nazwa Tabeli					(Bierzemy z bazy)
xxy			|| Nazwa Ograniczenia			(Wymyœlamy)
yyy			|| Nazwa kolumny z Tabeli xxx	(Bierzemy z bazy)
*/

-- ################################################################################################################################################################################

																			/* Odebranie kolumnie cechy klucza g³ównego: *\
-- ALTER TABLE xxx DROP CONSTRAINT xxy;
																!!! Wa¿ne - Kolumna której chcemy nadaæ cechy klucza g³ównego musi mieæ przypisany atrybut NOT NULL (no i typ oczywiœcie), dzia³a bez unique idk why
xxx			|| Nazwa Tabeli					(Bierzemy z bazy)
xxy			|| Nazwa Ograniczenia			(Wymyœlamy)
*/

-- ################################################################################################################################################################################

																			/* Sprawdzanie *\
--ALTER TABLE xxx ADD CONSTRAINT xxy CHECK (yyy > 2012);
																!!! Wa¿ne - CHECK nie tyle sprawdza warunek ale nak³ada ograniczenie dziêki któremu do kolumny mo¿emy wprowadziæ wartoœci TYLKO z okreœlonego przedzia³u
xxx			|| Nazwa Tabeli					(Bierzemy z bazy)
xxy			|| Nazwa Ograniczenia			(Wymyœlamy)
yyy			|| Nazwa kolumny z Tabeli xxx	(Bierzemy z bazy)
>			|| Potrzebny nam operator
2012		|| Dowolny warunek
*/

-- ################################################################################################################################################################################

																			/* Nadawanie Wartoœci Domyœlnej *\
--ALTER TABLE xxx ADD CONSTRAINT xxy DEFAULT ccc FOR yyy;

xxx			|| Nazwa Tabeli					(Bierzemy z bazy)
xxy			|| Nazwa Ograniczenia			(Wymyœlamy)
ccc			|| Wartoœæ domyœlna				(W zale¿noœci od typu kolumny mo¿e byæ to tekst/liczba/data/...)
yyy			|| Nazwa kolumny z Tabeli xxx	(Bierzemy z bazy)
*/

-- ################################################################################################################################################################################

																			/* Nadawanie kolumnie wartoœci UNIQUE *\
--ALTER TABLE xxx ADD CONSTRAINT xxy UNIQUE (yyy);

xxx			|| Nazwa Tabeli					(Bierzemy z bazy)
xxy			|| Nazwa Ograniczenia			(Wymyœlamy)
yyy			|| Nazwa kolumny z Tabeli xxx	(Bierzemy z bazy)
*/

-- ################################################################################################################################################################################

																			/* Nadawanie kolumnie wartoœci NOT NULL *\
--ALTER TABLE xxx ALTER COLUMN yyy NOT NULL;

xxx			|| Nazwa Tabeli					(Bierzemy z bazy)
yyy			|| Nazwa kolumny z Tabeli xxx	(Bierzemy z bazy)
*/
-- ################################################################################################################################################################################

																			/* Wstawianie danych do kolmuny *\
--insert into xxx (yyy,yyy,...) values (zzz,'zzz',...),(zzz,'zzz',...),...;

xxx			|| Nazwa Tabeli					(Bierzemy z bazy)
yyy			|| Nazwa kolumny z Tabeli xxx	(Bierzemy z bazy)
...			|| Oznacza mo¿liwoœæ powielania wczeœniejszych schematów
zzz			|| Jakakolwiek wartoœæ zgodna z typem
*/

-- ################################################################################################################################################################################

																			/* Wyœwietlanie Tabeli *\
--select * from xxx;

xxx			|| Nazwa Tabeli					(Bierzemy z bazy)
*/

-- ################################################################################################################################################################################

																			/* Wyœwietlanie konkretnych kolumn *\
--select yyy,yyy,... from xxx;

xxx			|| Nazwa Tabeli					(Bierzemy z bazy)
yyy			|| Nazwa kolumny				(Bierzemy z bazy)
*/

-- ################################################################################################################################################################################

																			/* Aktualizowanie danych *\
--update xxx set yyy=zzz where id=1;

xxx			|| Nazwa Tabeli					(Bierzemy z bazy)
yyy			|| Nazwa kolumny z Tabeli xxx	(Bierzemy z bazy)
zzz			|| Jakakolwiek wartoœæ zgodna z typem
id=1		|| Wskazujemy konkretn¹ kolumnê lub wiele (w to pole nale¿y podaæ jak¹œ unikatow¹ wartoœæ po której program bêdzie w stanie okreœliæ dok³adnie t¹ komórkê lub podajemy wartoœæ wspóln¹ dla wielu kolumn)
*/

-- ################################################################################################################################################################################

																			/* Usuwanie danych *\
--delete from xxx where id=1; 
--delete from xxx; (Usuwa wszystkie dane z tabeli)

xxx			|| Nazwa Tabeli					(Bierzemy z bazy)
id=1		|| Wskazujemy konkretn¹ kolumnê lub wiele (w to pole nale¿y podaæ jak¹œ unikatow¹ wartoœæ po której program bêdzie w stanie okreœliæ dok³adnie t¹ komórkê lub podajemy wartoœæ wspóln¹ dla wielu kolumn)
*/

-- ################################################################################################################################################################################

																			/* Zmiana nazwy tabeli *\
--exec sp_rename 'xxx', 'mmm'
																!!! Wa¿ne, Po zmianie nazwy tabeli nale¿y sprawdziæ czy operacja ta nie zepsu³a po³¹czeñ miêdzy tabelami
xxx			|| Nazwa tabeli					(Bierzemy z bazy)
mmm			|| Nowa nazwa tabeli			(Wymyœlamy)

-- ################################################################################################################################################################################

																			/* Zmiana nazwy kolumny *\
--sp_rename 'xxx.yyy', 'mmm' , 'COLUMN';

xxx			|| Nazwa tabeli					(Bierzemy z bazy)
yyy			|| Nazwa kolumny z Tabeli xxx	(Bierzemy z bazy)
mmm			|| Nowa nazwa kolumny			(Wymyœlamy)
'COLUMN'	|| Deklarujemy typ tego co bêdziemy zmieniaæ w naszym przypadku jest to kolumna czyli 'COLUMN'
*/
