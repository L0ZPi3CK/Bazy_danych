#include <iostream>
#include <cstdlib>
using namespace std;

int main()
{
	srand(time(NULL));

	int Ksiazki[672];

	for (int i = 671; i >= 0; i--)
	{
		Ksiazki[i] = 0;
		//cout << "Ksiazki[" << i << "] = " << Ksiazki[i] << endl;
	}

	int ilosc = 671;
	cout << "insert into Wypozyczenia (Nr_kl,Nr_ks,Data_wyp,Data_odd) values ";
	for (ilosc; ilosc != 0; ilosc--)
	{
		int Nr_kl = (1 + rand() % (150));
		 cout <<"(" << Nr_kl << ",";


		int Nr_ks = (1 + rand() % (671));	//300
		if (ilosc < 671)								// Przy zmianie ilosci należy zmienic wartosc takze tutaj
		{			
			while (Ksiazki[Nr_ks] != 0)
			{
				Nr_ks = (1 + rand() % (671));
			}
			
		}
		Ksiazki[Nr_ks] = 1;
		cout << Nr_ks <<",";


		int rok_wyp = (1999 + rand() % (2020 - 1999 + 1));
		int miesiac_wyp = (1 + rand() % (12));
		int dzien_wyp = (1 + rand() % (28));

		cout << "'" << rok_wyp << "-" << miesiac_wyp << "-" << dzien_wyp << "',";

		int rok_odd = (1999 + rand() % (2020 - 1999 + 1));
		while (rok_odd < rok_wyp)
		{
			rok_odd = (1999 + rand() % (2020 - 1999 + 1));
		}
		
		int miesiac_odd = (1 + rand() % (12));
		int dzien_odd = (1 + rand() % (28));

		if (rok_odd == rok_wyp && miesiac_odd < miesiac_wyp)
		{
			while (miesiac_odd < miesiac_wyp)
			{
				miesiac_odd = (1 + rand() % (12));
			}
		}

		if (rok_odd == rok_wyp && miesiac_odd == miesiac_wyp)
		{
			while (dzien_odd < dzien_wyp)
			{
				dzien_odd = (1 + rand() % (28));
			}
		}

		cout << "'" << rok_odd << "-" << miesiac_odd << "-" << dzien_odd << "'),"<<endl;
	}


	return 0;
}


