 -- ALTER TABLEKlient DROP CONSTRAINTnazwa_klucza;
 -- w
 -- ALTER TABLE Klient DROP PRIMARY KEY;

 -- ALTER TABLE Klient ALTER COLUMN Pesel varchar(11) NOT NULL;
 -- w
 -- ALTER TABLE Klient MODIFY PESEL varchar(11) NOT NULL;

 -- IDENTITY
 -- w
 -- AUTO_INCREMENT

 -- ALTER TABLE Klient ADD CONSTRAINT df_miejsceDEFAULT �Krak�w� FOR miejscowosc;
 -- w
 -- ALTER TABLE Klient ALTER miejscowoscSET DEFAULT 'Krak�w';

 -- ALTER TABLE Ksi��ki DROP CONSTRAINT nazwa_ograniczenia;
 -- w
 -- ALTER TABLE Ksi��ki DROP CHECK nazwa_ograniczenia;

