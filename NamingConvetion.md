# Konwencja nazewnictwa dla Akademia BSC.

## Informacje

| Informacja | Wartość |
| - | - |
| wersja | 1.0 |
| stan | **zatwierdzona** |
| data wprowadzenia | **2018-09-19** |
| autorzy | Bogdan Polak |
| data rozpoczęcia prac | 2018-09-01 |

## Konwencja

| Rodzaj identyfikatora | Przykład | Konwencja |
| - | - | - |
| moduł tylko z kodem | Model.Customer.pas | Nazwa wieloczłonowa: [więcej informacji](#Nazywanie-Modułów)  |
| klasa | TPizza | [CamelCase](#Camel-Case), duża litera T na początku  |
| metoda | changeState() | [CamelCase](#Camel-Case) z małej litery |
| atrybuty klasy | FAppVersion | [CamelCase](#Camel-Case), duża litera F na początku |
| zmienne globalne | Form1 | **Uwaga!** Należy unikać globalnych zmiennych. ([wyjaśnienie-1](#Odnośniki))  |
| zmienne lokalne | FirstName | [CamelCase](#Camel-Case) z dużej litery |
| parametry | FirstName | [CamelCase](#Camel-Case) z dużej litery |

## Nazywanie Modułów

Moduły należy nazywać zgodnie z następującymi nazwami Nazwa wieloczłonowa informująca o funkcji, naśladująca przestrzenie nazw. Nazwa każdego członu z dużej litery. Nazwy [CamelCase](#Camel-Case). 

Nazwa każdego członu z dużej litery. W razie potrzeby członów w nazwie może być więcej. Zalecenie dla większych projektów: warto odwzorować strukturę podkatalogów pokrywającą przestrzenie nazw.

W przyszłości struktura członów i ich nazwy zostaną precyzyjnie zdefiniowane jednak aktualnie nie jesteśmy w stanie określić zamknięty zbiór przestrzeni.

Propozycje bazowych przestrzeni nazw dla projektu:

* Formatek i moduły danych:
    * Module.
    * Frame.
    * Dialog.
    * Form.
* Samodzielnych unit-ów:
    * Database.
    * Utils.
    * Data.
    * Logic.
    * Unit. (raczej lepiej unikać tej nazwy)
* Unity bazujące na architekturze MVC:
    * Model.
    * Controler.

## Camel Case

* Nazwy mają informować o funkcji nazywanego obiektu. 
* Liczba słów i długość nazwy powinna być jak najmniejsza, ale powinna precyzyjnie wyjaśniać funkcję i zastosowanie obiektu. 
* Nazwa powinna być zgodna z zasadami *CleanCode*, czyli zastępować komentarze.
* **Nazwy muszą być zapisane w języku angielskim**. Proszę korzystać ze słownika w razie wątpliwości. 
* Źle dobrane nazwy mogą zostać zakwestionowane w czasie przeglądu kodu.  
* **Wyjątki**
    * Nazwy modułów - mogą mieć postać skrótowców.

## Odnośniki

* (wyjaśnienie-1) - **Unikanie zmiennych globalnych.**
    * W formatkach zmienne globalne muszą się pojawiać dla wszystkich auto-kreowanych formatek, a także dla części modułów danych.
    * W warstwie logiki dodanie zmiennej globalnej jest traktowane jako wykroczenie od konwencji.
    * Zalecane rozwiązanie: **Singleton**  (zastępowanie zmiennych globalne przez ```Singleton```). 

## Literatura

**TODO:** Uzupełnić :-)