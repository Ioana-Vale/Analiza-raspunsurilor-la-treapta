# Analiza-raspunsurilor-la-treapta

Ordin 1
Încărcarea Datelor:

Codul începe prin încărcarea datelor din fișierul lab3_order1_5.mat.
u, y, și t sunt extrase din datele încărcate.

Trasarea Intrării și Ieșirii:

Trasează intrarea (u) și ieșirea (y) în funcție de timp (t) în două subgrafice.

Identificarea Sistemului:

Selectează o submulțime a datelor (u_id, y_id, t_id) pentru identificarea sistemului.
Definește unele valori inițiale (y_ss, y_id_0, u_id_ss, u_id_0) și calculează câștigul sistemului (K).
Trasează sistemul identificat.

Modelarea Funcției de Transfer:

Setează o funcție de transfer cu parametrii bazată pe sistemul identificat.
Evaluează modelul pe datele de validare și calculează Eroarea Medie Pătratică (MSE).
Trasează rezultatele de validare.

Secțiunea: Ordin 2

Încărcarea Datelor:

Încarcă datele din fișierul lab3_order2_5.mat.

Trasarea Intrării și Ieșirii:

Trasează intrarea (u) și ieșirea (y) în funcție de timp (t).

Identificarea Sistemului:

Identifică parametrii sistemului (K, sigma, zeta, Tosc, wn) bazat pe indicii furnizați.
Construiește matricele modelului spațiu de stare A, B, C, D și funcția de transfer H.
Simulează răspunsul sistemului și-l compară cu ieșirea reală.

Metrici de Performanță:

Calculează metricile de performanță (J, empt) și trasează ieșirea simulată față de ieșirea reală.
