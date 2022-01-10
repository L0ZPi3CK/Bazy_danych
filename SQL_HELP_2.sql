--######################################################################################################################################################################

				/* Podstawowoe klauzule dla instrukcji SELECT *\

FROM		||	okreslenie zrodla (zrodel) danych i relacji zachodzacych miedzy nimi
WHERE		||	filtrowanie rekordow, definiuje warunek logiczny dla selekcji poziomej (wybor wierszy)
GROUP BY	||	okreslanie grup rekordow, (agregowanie pol podsumowanych)
HAVING		||	dla funkcji agregujacych filtrowanie grup
SELECT		||	okreslanie ksztaltu wyniku, selekcja pionowa (wybor kolumn)
ORDER BY	||	okreslanie sposobu sortowania wyniku


-- SELECT odbywa sie w kolejnosci: + wyjasnienie po ludzku
1. FROM		||	Aktualnie sprowadza sie do podania nazwy tabeli
2. WHERE	||	Filtrowanie wedlug podanego tutaj warunku
3. GROUP BY	||	Grupowanie rekordow							<-->	(do sprawdzenia)
4. HAVING	||	Filtrowanie utworzonych grup						<-->	(do sprawdzenia)
5. SELECT	||	Wybor kolumn ktorych zawartosc zostanie zwrocona
6. ORDER BY	||	Sortowanie wyniku

--######################################################################################################################################################################

				/* Dodatkowe klauzule *\
					
DISTINCT	|| Eliminuje powtarzajace sie wiersze (z wyswietlenia zapytania)

--######################################################################################################################################################################

				/* Rozne *\
					
-- ___ as ___		||	-> Wyrazenie jako nazwa_wyswietlaniej_kolumny;
-- +			||	Plus laczy np. dwie dwa ciagi varchar
-- in('_','_');		||	Zamiast 2 operatorow porownania
-- between _ and _	||	Przedzial miedzy _ i _
-- is null/notnull	||	Jest NULL, nie jest NULL

--######################################################################################################################################################################

				/*Funkcje*\
-- convert(type,variable)		Tutaj variable jako np. nazwa kolumny

--######################################################################################################################################################################

				/* Wybieranie danych z bazy *\
-- select * from xxx;
xxx			|| Nazwa Tabeli			(Bierzemy z bazy)

-- selecy yyy,yyy,yyy, from xxx;
xxx			|| Nazwa Tabeli			(Bierzemy z bazy)
yyy			|| Nazwa kolumny z Tabeli xxx	(Bierzemy z bazy)

--######################################################################################################################################################################

					/* ORDER BY *\
-- select yyy,yyy,cena from xxx ORDER BY cena;
ASC			|| Ustawia sortowanie rosnaco	(jest ustawione domyslnie)
DESC			|| Ustawia sortowanie malejaco	

-- select yyy,yyy,spalanie,cena from xxx ORDER BY cena DESC, spalanie ASC;
DESC, ASC		|| Najpierw sortuje malejaco po cenie, a w przypadku natrafienia na ta sama cene kilka razy, sortuje rosnaco po spalaniu.

--######################################################################################################################################################################

					/* WHERE *\
-- select yyy,yyy,yyy, from xxx WHERE yyy = ___;
= ___				|| Dostepne sa operatory porownania, 

-- select Marka, Kolor from Samochody where Kolor in ('Zielony','Bordowy');
yyy in('_','_')			|| Dostepny jest IN

-- select Marka, Model, Spalanie from Samochody where Spalanie between 7 and 10.5
yyy between _ and _ 		|| Dostepny jest BETWEEN

-- select Marka, Kolor from Samochody where Kolor is null
yyy is NULL			|| Dostepny jest NULL

--######################################################################################################################################################################

Samochody, których marka zaczyna się na H
-- select Marka, Model, Kolor from Samochody where Marka like ’H%’

Samochody, których marka kończy się na a
-- select Marka, Model, Kolor from Samochody where Marka like ’%a’

Samochody, których marka ma drugą literę o
-- select Marka, Model, Kolor from Samochody where Marka like ’_o%’

Samochody, których model jest 3-literowy, np. Peugeot 306, Volvo V40
-- select Marka, Model, Kolor from Samochody where Model like ’_ _ _’

Samochody, których marka nie zaczyna się na literę F
-- select Marka, Model, Kolor from Samochody where Marka not like ’F%'

--######################################################################################################################################################################

				/* TOP *\
-- select top 1 Marka, Model, Rocznik from samochody order by rocznik desc
		|| Wypisuje jeden najnowszy model

-- select top 1 with ties Marka, Model, Rocznik from samochody order by rocznik desc
		|| Wybiera jeden najnowszy model, chyba ze wystepuje ich wiecej to wypisuje wszystkie

