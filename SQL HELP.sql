-- ################################################################################################################################################################################

-- create database _______				|| Tworzenie bazy ______

-- drop database _______				|| Usuwanie bazy _____ 

-- go							|| Wykonanie poleceń do tego miejsca

-- use ______;						|| Użycie bazy _______

-- create table _______();				|| Stworzenie tabeli _____ a w nawiasach ( dane o poszczególnych kolumnach i atrybytach)

-- drop table ________;					|| Usuwanie tabeli _____


-- ################################################################################################################################################################################

									/* Typy zmiennych: *\

-- int							|| Liczby z zakresu -2,147,483,648 do 2,147,483,647
-- float						|| Liczby zmiennoprzecinkowe (Można ustalać precyzję poprzez float(x), gdzie za x podajemy dokładność po przecinku)
-- varchar(__)						|| Znaki, dla varchar(xx) xx- określa maksymalną liczbę znaków jaką możemy wprowadzić
-- money						|| Pieniądze
-- date							|| Data YYYY-MM-DD
-- datetime						|| Data YYYY-MM-DD HH-MI-SS
*/

-- ################################################################################################################################################################################

									/* Cechy kolumn które poznaliśmy: *\

-- identity(x,y)					|| Autonumerowanie, gdzie x oznacza liczbę od której zaczynamy numerować a y przeskoki w numeracji (np dla (1,2) będzie to 1,3,5,7,9....
-- primary key						|| Ustawia kolumne jako klucz głowny (Primary key automatycznie przypisuje Unique i NOT NULL (Klucz główny musi być unikatowy i nie może być pusty)
-- NOT NULL						|| Kolumna nie może być pusta
-- Unique						|| Zapewnia że wszystkie wartości w kolumnie są różne
-- DEFAULT						|| Ustawia wartość domyślną (więcej przy użyciu poniżej)
-- CHECK						|| Ogranicza (więcej przy użyciu poniżej)
*/

-- ################################################################################################################################################################################

									/* Operatory: *\

Arytmetyczne:
-- '+'					|| Suma
-- '-'					|| Różnica
-- '*'					|| Iloczyn
-- '/'					|| Iloraz
-- '%'					|| Modulo

Logiczne:
-- 'AND'				|| "i" ( Do zastosowania przy warunkach, zastosowanie and oznacza że oba MUSZĄ być spełnione)
-- 'OR'					|| "lub" (Do zastosowania przy warunkach, zastosowanie or oznacza że przynajmniej jeden musi być spełniony)
-- 'NOT'				|| "Nie" (Do zastosowania przy warunkach, zastosowanie not oznacza że warunek nie może być spełniony)

Porównania:
-- '='					|| Równość
-- '<'					|| Mniejszość
-- '>'					|| Większość
-- '<='					|| Mniejszy LUB równy
-- '>='					|| Większy LUB równy
-- '<>'					|| Nie równy
-- '!='					|| Nie równy
*/

-- ################################################################################################################################################################################
-- ############################# Uwaga gdy wprowadzamy Literały (Czyli wartości do kolumn) to:	###################################################################################
-- ############################# Typy liczbowe mają postać liczby:		111						###################################################################################
-- ############################# Ciągi znaków muszą być w apostrofach:	'Siema','Kraków'		###################################################################################
-- ############################# Typy daty muszą być w apostrofach:		'20-09-2012'			###################################################################################
-- ################################################################################################################################################################################



-- ********************************************************************************************************************************************************************************
-- ************************************************************************* Przed Stworzeniem Tabeli *****************************************************************************
-- ********************************************************************************************************************************************************************************


									/* Tworzenie połączeń między tabelami w trakcie ich tworzenia *\
create table xxx
(
...
yyy		int REFERENCES xxy(yyx),
...
);

xxx			|| Nazwa Tabeli					(Wymyślamy)
yyy			|| Nazwa kolumny				(Wymyślamy)
int			|| Cechy kolumny				(Nadajemy)
xxy			|| Nazwa Drugiej Tabeli			(Bierzemy z bazy, a co z tego wynika Druga Tabela MUSI już istnieć)
yyx			|| Nazwa Kolumny Drugiej Tabeli	(Bierzemy z bazy)
*/

-- ################################################################################################################################################################################

									/* Definiowanie wartości domyślnej podczas tworzenia tabeli *\
create table xxx
(
...
yyy		int NOT NULL DEFAULT ccc,
...
);

xxx			|| Nazwa Tabeli					(Wymyślamy)
yyy			|| Nazwa kolumny				(Wymyślamy)
int ...			|| Cechy kolumny				(Nadajemy)
ccc			|| Wartość domyślna				(W zależności od typu kolumny może być to tekst/liczba/data/...)
*/




-- ********************************************************************************************************************************************************************************
-- ************************************************************************* Po Stworzeniu Tabeli *********************************************************************************
-- ********************************************************************************************************************************************************************************

-- ################################################################################################################################################################################

									/* Dodawanie relacji/połączeń po stworzeniu tabeli *\
-- Alter table xxx add constraint xxy foreign key(yyy) references yyx(yxx)

xxx			|| Nazwa Tabeli					(Bierzemy z bazy)
xxy			|| Nazwa Ograniczenia			(Wymyślamy)
yyy			|| Nazwa kolumny z Tabeli xxx	(Bierzemy z bazy)
yyx			|| Nazwa Tabeli					(Bierzemy z bazy)
yxx			|| Nazwa kolumny z Tabeli yyx	(Bierzemy z bazy)
*/

-- ################################################################################################################################################################################

									/* Zmiana cech kolumny: *\
--ALTER TABLE xxx ALTER COLUMN yyy zzzyyyxxx;

xxx			|| Nazwa Tabeli					(Bierzemy z bazy)
yyy			|| Nazwa kolumny z Tabeli xxx	(Bierzemy z bazy)
zzzyyyxxx		|| Nowe cechy kolumny np. int NOT NULL
*/

-- ################################################################################################################################################################################

									/* Nadanie kolumnie cechy klucza głównego: *\
-- ALTER TABLE xxx ADD CONSTRAINT xxy primary key (yyy);
																!!! Ważne - Kolumna której chcemy nadać cechy klucza głównego musi mieć przypisany atrybut NOT NULL (no i typ oczywiście), działa bez unique idk why
xxx			|| Nazwa Tabeli					(Bierzemy z bazy)
xxy			|| Nazwa Ograniczenia			(Wymyślamy)
yyy			|| Nazwa kolumny z Tabeli xxx	(Bierzemy z bazy)
*/

-- ################################################################################################################################################################################

									/* Odebranie kolumnie cechy klucza głównego: *\
-- ALTER TABLE xxx DROP CONSTRAINT xxy;
																!!! Ważne - Kolumna której chcemy nadać cechy klucza głównego musi mieć przypisany atrybut NOT NULL (no i typ oczywiście), działa bez unique idk why
xxx			|| Nazwa Tabeli					(Bierzemy z bazy)
xxy			|| Nazwa Ograniczenia			(Wymyślamy)
*/

-- ################################################################################################################################################################################

									/* Sprawdzanie *\
--ALTER TABLE xxx ADD CONSTRAINT xxy CHECK (yyy > 2012);
																!!! Ważne - CHECK nie tyle sprawdza warunek ale nakłada ograniczenie dzięki któremu do kolumny możemy wprowadzić wartości TYLKO z określonego przedziału
xxx			|| Nazwa Tabeli					(Bierzemy z bazy)
xxy			|| Nazwa Ograniczenia			(Wymyślamy)
yyy			|| Nazwa kolumny z Tabeli xxx	(Bierzemy z bazy)
>			|| Potrzebny nam operator
2012			|| Dowolny warunek
*/

-- ################################################################################################################################################################################

									/* Nadawanie Wartości Domyślnej *\
--ALTER TABLE xxx ADD CONSTRAINT xxy DEFAULT ccc FOR yyy;

xxx			|| Nazwa Tabeli					(Bierzemy z bazy)
xxy			|| Nazwa Ograniczenia			(Wymyślamy)
ccc			|| Wartość domyślna				(W zależności od typu kolumny może być to tekst/liczba/data/...)
yyy			|| Nazwa kolumny z Tabeli xxx	(Bierzemy z bazy)
*/

-- ################################################################################################################################################################################

									/* Nadawanie kolumnie wartości UNIQUE *\
--ALTER TABLE xxx ADD CONSTRAINT xxy UNIQUE (yyy);

xxx			|| Nazwa Tabeli					(Bierzemy z bazy)
xxy			|| Nazwa Ograniczenia			(Wymyślamy)
yyy			|| Nazwa kolumny z Tabeli xxx	(Bierzemy z bazy)
*/

-- ################################################################################################################################################################################

									/* Nadawanie kolumnie wartości NOT NULL *\
--ALTER TABLE xxx ALTER COLUMN yyy NOT NULL;

xxx			|| Nazwa Tabeli					(Bierzemy z bazy)
yyy			|| Nazwa kolumny z Tabeli xxx	(Bierzemy z bazy)
*/
-- ################################################################################################################################################################################

									/* Wstawianie danych do kolmuny *\
--insert into xxx (yyy,yyy,...) values (zzz,'zzz',...),(zzz,'zzz',...),...;

xxx			|| Nazwa Tabeli					(Bierzemy z bazy)
yyy			|| Nazwa kolumny z Tabeli xxx	(Bierzemy z bazy)
...			|| Oznacza możliwość powielania wcześniejszych schematów
zzz			|| Jakakolwiek wartość zgodna z typem
*/

-- ################################################################################################################################################################################

									/* Wyświetlanie Tabeli *\
--select * from xxx;

xxx			|| Nazwa Tabeli					(Bierzemy z bazy)
*/

-- ################################################################################################################################################################################

									/* Wyświetlanie konkretnych kolumn *\
--select yyy,yyy,... from xxx;

xxx			|| Nazwa Tabeli					(Bierzemy z bazy)
yyy			|| Nazwa kolumny				(Bierzemy z bazy)
*/

-- ################################################################################################################################################################################

									/* Aktualizowanie danych *\
--update xxx set yyy=zzz where id=1;

xxx			|| Nazwa Tabeli					(Bierzemy z bazy)
yyy			|| Nazwa kolumny z Tabeli xxx	(Bierzemy z bazy)
zzz			|| Jakakolwiek wartość zgodna z typem
id=1			|| Wskazujemy konkretną kolumnę lub wiele (w to pole należy podać jakąś unikatową wartość po której program będzie w stanie określić dokładnie tą komórkę lub podajemy wartość wspólną dla wielu kolumn)
*/

-- ################################################################################################################################################################################

									/* Usuwanie danych *\
--delete from xxx where id=1; 
--delete from xxx; (Usuwa wszystkie dane z tabeli)

xxx			|| Nazwa Tabeli					(Bierzemy z bazy)
id=1			|| Wskazujemy konkretną kolumnę lub wiele (w to pole należy podać jakąś unikatową wartość po której program będzie w stanie określić dokładnie tą komórkę lub podajemy wartość wspólną dla wielu kolumn)
*/

-- ################################################################################################################################################################################

									/* Zmiana nazwy tabeli *\
--exec sp_rename 'xxx', 'mmm'
																!!! Ważne, Po zmianie nazwy tabeli należy sprawdzić czy operacja ta nie zepsuła połączeń między tabelami
xxx			|| Nazwa tabeli					(Bierzemy z bazy)
mmm			|| Nowa nazwa tabeli			(Wymyślamy)

-- ################################################################################################################################################################################

									/* Zmiana nazwy kolumny *\
--sp_rename 'xxx.yyy', 'mmm' , 'COLUMN';

xxx			|| Nazwa tabeli					(Bierzemy z bazy)
yyy			|| Nazwa kolumny z Tabeli xxx	(Bierzemy z bazy)
mmm			|| Nowa nazwa kolumny			(Wymyślamy)
'COLUMN'		|| Deklarujemy typ tego co będziemy zmieniać w naszym przypadku jest to kolumna czyli 'COLUMN'
*/
