-- ################################################################################################################################################################################

-- create database _______		|| Tworzenie bazy ______

-- drop database _______		|| Usuwanie bazy _____ 

-- go							|| Wykonanie polece� do tego miejsca

-- use ______;					|| U�ycie bazy _______

-- create table _______();		|| Stworzenie tabeli _____ a w nawiasach ( dane o poszczeg�lnych kolumnach i atrybytach)

-- drop table ________;			|| Usuwanie tabeli _____


-- ################################################################################################################################################################################

																			/* Typy zmiennych: *\

-- int							|| Liczby z zakresu -2,147,483,648 do 2,147,483,647
-- float						|| Liczby zmiennoprzecinkowe (Mo�na ustala� precyzj� poprzez float(x), gdzie za x podajemy dok�adno�� po przecinku)
-- varchar(__)					|| Znaki, dla varchar(xx) xx- okre�la maksymaln� liczb� znak�w jak� mo�emy wprowadzi�
-- money						|| Pieni�dze
-- date							|| Data YYYY-MM-DD
-- datetime						|| Data YYYY-MM-DD HH-MI-SS
*/

-- ################################################################################################################################################################################

																			/* Cechy kolumn kt�re poznali�my: *\

-- identity(x,y)				|| Autonumerowanie, gdzie x oznacza liczb� od kt�rej zaczynamy numerowa� a y przeskoki w numeracji (np dla (1,2) b�dzie to 1,3,5,7,9....
-- primary key					|| Ustawia kolumne jako klucz g�owny (Primary key automatycznie przypisuje Unique i NOT NULL (Klucz g��wny musi by� unikatowy i nie mo�e by� pusty)
-- NOT NULL						|| Kolumna nie mo�e by� pusta
-- Unique						|| Zapewnia �e wszystkie warto�ci w kolumnie s� r�ne
-- DEFAULT						|| Ustawia warto�� domy�ln� (wi�cej przy u�yciu poni�ej)
-- CHECK						|| Ogranicza (wi�cej przy u�yciu poni�ej)
*/

-- ################################################################################################################################################################################

																			/* Operatory: *\

Arytmetyczne:
-- '+'					|| Suma
-- '-'					|| R�nica
-- '*'					|| Iloczyn
-- '/'					|| Iloraz
-- '%'					|| Modulo

Logiczne:
-- 'AND'				|| "i" ( Do zastosowania przy warunkach, zastosowanie and oznacza �e oba MUSZ� by� spe�nione)
-- 'OR'					|| "lub" (Do zastosowania przy warunkach, zastosowanie or oznacza �e przynajmniej jeden musi by� spe�niony)
-- 'NOT'				|| "Nie" (Do zastosowania przy warunkach, zastosowanie not oznacza �e warunek nie mo�e by� spe�niony)

Por�wnania:
-- '='					|| R�wno��
-- '<'					|| Mniejszo��
-- '>'					|| Wi�kszo��
-- '<='					|| Mniejszy LUB r�wny
-- '>='					|| Wi�kszy LUB r�wny
-- '<>'					|| Nie r�wny
-- '!='					|| Nie r�wny
*/

-- ################################################################################################################################################################################
-- ############################# Uwaga gdy wprowadzamy Litera�y (Czyli warto�ci do kolumn) to:	###################################################################################
-- ############################# Typy liczbowe maj� posta� liczby:		111						###################################################################################
-- ############################# Ci�gi znak�w musz� by� w apostrofach:	'Siema','Krak�w'		###################################################################################
-- ############################# Typy daty musz� by� w apostrofach:		'20-09-2012'			###################################################################################
-- ################################################################################################################################################################################



-- ********************************************************************************************************************************************************************************
-- ************************************************************************* Przed Stworzeniem Tabeli *****************************************************************************
-- ********************************************************************************************************************************************************************************


																			/* Tworzenie po��cze� mi�dzy tabelami w trakcie ich tworzenia *\
create table xxx
(
...
yyy		int REFERENCES xxy(yyx),
...
);

xxx			|| Nazwa Tabeli					(Wymy�lamy)
yyy			|| Nazwa kolumny				(Wymy�lamy)
int			|| Cechy kolumny				(Nadajemy)
xxy			|| Nazwa Drugiej Tabeli			(Bierzemy z bazy, a co z tego wynika Druga Tabela MUSI ju� istnie�)
yyx			|| Nazwa Kolumny Drugiej Tabeli	(Bierzemy z bazy)
*/

-- ################################################################################################################################################################################

																			/* Definiowanie warto�ci domy�lnej podczas tworzenia tabeli *\
create table xxx
(
...
yyy		int NOT NULL DEFAULT ccc,
...
);

xxx			|| Nazwa Tabeli					(Wymy�lamy)
yyy			|| Nazwa kolumny				(Wymy�lamy)
int ...		|| Cechy kolumny				(Nadajemy)
ccc			|| Warto�� domy�lna				(W zale�no�ci od typu kolumny mo�e by� to tekst/liczba/data/...)
*/




-- ********************************************************************************************************************************************************************************
-- ************************************************************************* Po Stworzeniu Tabeli *********************************************************************************
-- ********************************************************************************************************************************************************************************

-- ################################################################################################################################################################################

																			/* Dodawanie relacji/po��cze� po stworzeniu tabeli *\
-- Alter table xxx add constraint xxy foreign key(yyy) references yyx(yxx)

xxx			|| Nazwa Tabeli					(Bierzemy z bazy)
xxy			|| Nazwa Ograniczenia			(Wymy�lamy)
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

																			/* Nadanie kolumnie cechy klucza g��wnego: *\
-- ALTER TABLE xxx ADD CONSTRAINT xxy primary key (yyy);
																!!! Wa�ne - Kolumna kt�rej chcemy nada� cechy klucza g��wnego musi mie� przypisany atrybut NOT NULL (no i typ oczywi�cie), dzia�a bez unique idk why
xxx			|| Nazwa Tabeli					(Bierzemy z bazy)
xxy			|| Nazwa Ograniczenia			(Wymy�lamy)
yyy			|| Nazwa kolumny z Tabeli xxx	(Bierzemy z bazy)
*/

-- ################################################################################################################################################################################

																			/* Odebranie kolumnie cechy klucza g��wnego: *\
-- ALTER TABLE xxx DROP CONSTRAINT xxy;
																!!! Wa�ne - Kolumna kt�rej chcemy nada� cechy klucza g��wnego musi mie� przypisany atrybut NOT NULL (no i typ oczywi�cie), dzia�a bez unique idk why
xxx			|| Nazwa Tabeli					(Bierzemy z bazy)
xxy			|| Nazwa Ograniczenia			(Wymy�lamy)
*/

-- ################################################################################################################################################################################

																			/* Sprawdzanie *\
--ALTER TABLE xxx ADD CONSTRAINT xxy CHECK (yyy > 2012);
																!!! Wa�ne - CHECK nie tyle sprawdza warunek ale nak�ada ograniczenie dzi�ki kt�remu do kolumny mo�emy wprowadzi� warto�ci TYLKO z okre�lonego przedzia�u
xxx			|| Nazwa Tabeli					(Bierzemy z bazy)
xxy			|| Nazwa Ograniczenia			(Wymy�lamy)
yyy			|| Nazwa kolumny z Tabeli xxx	(Bierzemy z bazy)
>			|| Potrzebny nam operator
2012		|| Dowolny warunek
*/

-- ################################################################################################################################################################################

																			/* Nadawanie Warto�ci Domy�lnej *\
--ALTER TABLE xxx ADD CONSTRAINT xxy DEFAULT ccc FOR yyy;

xxx			|| Nazwa Tabeli					(Bierzemy z bazy)
xxy			|| Nazwa Ograniczenia			(Wymy�lamy)
ccc			|| Warto�� domy�lna				(W zale�no�ci od typu kolumny mo�e by� to tekst/liczba/data/...)
yyy			|| Nazwa kolumny z Tabeli xxx	(Bierzemy z bazy)
*/

-- ################################################################################################################################################################################

																			/* Nadawanie kolumnie warto�ci UNIQUE *\
--ALTER TABLE xxx ADD CONSTRAINT xxy UNIQUE (yyy);

xxx			|| Nazwa Tabeli					(Bierzemy z bazy)
xxy			|| Nazwa Ograniczenia			(Wymy�lamy)
yyy			|| Nazwa kolumny z Tabeli xxx	(Bierzemy z bazy)
*/

-- ################################################################################################################################################################################

																			/* Nadawanie kolumnie warto�ci NOT NULL *\
--ALTER TABLE xxx ALTER COLUMN yyy NOT NULL;

xxx			|| Nazwa Tabeli					(Bierzemy z bazy)
yyy			|| Nazwa kolumny z Tabeli xxx	(Bierzemy z bazy)
*/
-- ################################################################################################################################################################################

																			/* Wstawianie danych do kolmuny *\
--insert into xxx (yyy,yyy,...) values (zzz,'zzz',...),(zzz,'zzz',...),...;

xxx			|| Nazwa Tabeli					(Bierzemy z bazy)
yyy			|| Nazwa kolumny z Tabeli xxx	(Bierzemy z bazy)
...			|| Oznacza mo�liwo�� powielania wcze�niejszych schemat�w
zzz			|| Jakakolwiek warto�� zgodna z typem
*/

-- ################################################################################################################################################################################

																			/* Wy�wietlanie Tabeli *\
--select * from xxx;

xxx			|| Nazwa Tabeli					(Bierzemy z bazy)
*/

-- ################################################################################################################################################################################

																			/* Wy�wietlanie konkretnych kolumn *\
--select yyy,yyy,... from xxx;

xxx			|| Nazwa Tabeli					(Bierzemy z bazy)
yyy			|| Nazwa kolumny				(Bierzemy z bazy)
*/

-- ################################################################################################################################################################################

																			/* Aktualizowanie danych *\
--update xxx set yyy=zzz where id=1;

xxx			|| Nazwa Tabeli					(Bierzemy z bazy)
yyy			|| Nazwa kolumny z Tabeli xxx	(Bierzemy z bazy)
zzz			|| Jakakolwiek warto�� zgodna z typem
id=1		|| Wskazujemy konkretn� kolumn� lub wiele (w to pole nale�y poda� jak�� unikatow� warto�� po kt�rej program b�dzie w stanie okre�li� dok�adnie t� kom�rk� lub podajemy warto�� wsp�ln� dla wielu kolumn)
*/

-- ################################################################################################################################################################################

																			/* Usuwanie danych *\
--delete from xxx where id=1; 
--delete from xxx; (Usuwa wszystkie dane z tabeli)

xxx			|| Nazwa Tabeli					(Bierzemy z bazy)
id=1		|| Wskazujemy konkretn� kolumn� lub wiele (w to pole nale�y poda� jak�� unikatow� warto�� po kt�rej program b�dzie w stanie okre�li� dok�adnie t� kom�rk� lub podajemy warto�� wsp�ln� dla wielu kolumn)
*/

-- ################################################################################################################################################################################

																			/* Zmiana nazwy tabeli *\
--exec sp_rename 'xxx', 'mmm'
																!!! Wa�ne, Po zmianie nazwy tabeli nale�y sprawdzi� czy operacja ta nie zepsu�a po��cze� mi�dzy tabelami
xxx			|| Nazwa tabeli					(Bierzemy z bazy)
mmm			|| Nowa nazwa tabeli			(Wymy�lamy)

-- ################################################################################################################################################################################

																			/* Zmiana nazwy kolumny *\
--sp_rename 'xxx.yyy', 'mmm' , 'COLUMN';

xxx			|| Nazwa tabeli					(Bierzemy z bazy)
yyy			|| Nazwa kolumny z Tabeli xxx	(Bierzemy z bazy)
mmm			|| Nowa nazwa kolumny			(Wymy�lamy)
'COLUMN'	|| Deklarujemy typ tego co b�dziemy zmienia� w naszym przypadku jest to kolumna czyli 'COLUMN'
*/
