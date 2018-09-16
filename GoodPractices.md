# Dobre praktyki programowania

### Testowanie

* Testuj kod często
* Postaraj się, aby robiły to za Ciebie automaty
    * Testy jednostkowe
        * DUnitX
        * TestInsight (Stefan Glienke) [link](https://bitbucket.org/sglienke/testinsight/wiki/Home)
    * Testy integracyjne
        * DUnitX
    * Testy akceptacyjne
        * Nagrywanie i odtwarzanie
        * Ranorex Studio - [link](https://www.ranorex.com/windows-desktop-test-automation/)
        * Smartbear TestComplete - [link](https://smartbear.com/product/testcomplete/)
* Czasami warto popracować w TDD
    * Krótkie cykle:
        1. Piszę prosty test
        2. Piszę kod spełniający ten test
        3. Refaktoryzuję kod test i kod produkcyjny

### Praca zespołowa

* Przeglądy kodu źródłowego
    * Na początek "na żywo" - spotkanie w jednej sali
    * Docelowo - off-line
* Sprawdźcie pracę parami
    * Pair Programming - jedno z wymagań metodyki XP
* Zostawiajcie ślad po tym co zrobiliście
    * Wspólne repozytorium
    * Przy całodziennym kodowaniu - min. 10 rewizji (commit-ów)

### DRY

DRY - Don't Repeat Yourself

* Unikaj kopiuj-wklej
* Uogólniaj rozwiązanie
    * zamiast: zmienna1, zmienna2, zmienna3
    * tablica lub lista
    * odnajduj podobne wzorce i buduj reużywalne moduły
* W metodach używaj mniej niż 5 wyrażeń warunkowych IF / WHILE
    * szczególnie gdy niewiele się różnią zarówno pod kątem warunku, jak i tego co jest wykonywane jeśli warunek jest prawdziwy
* Separacja logiki
    * Wydzielaj logikę na zewnątrz (do klasy lub przynajmniej do funkcji)
    * Staraj się wstrzykiwać wszelkie zależności do klasy (Prawo Demeter)

### Zapachy kodu

Nie programuj zawsze w ten sam sposób. Ucz się i eksperymentuj z nowymi sposobami kodowania.  Naucz się rozpoznawać zapachy kodu: kiedy śmierdzi, a kiedy ma miły zapach.

Polecam:
* Książka: Refactoring - Improving the Design of Existing Code
   * autorzy: Martin Fowler, Kent Beck, John Brant, William Opdyke, Don Roberts, Erich Gamma
   * [Tłumaczenie na polski (Helion)](https://helion.pl/ksiazki/refaktoryzacja-ulepszanie-struktury-istniejacego-kodu-martin-fowler-kent-beck-john-brant-william-opdy,refukv.htm)

### Czysty kod wg wujka Bob-a

> Czysty kod w JavaScript
> Tłumaczenie na polski wraz z ciekawymi przykładami
> [Zobacz tutaj](https://github.com/greg-dev/clean-code-javascript-pl)

| Klucz | Treść |
| - | - |
| Tytuł | Czysty kod. Podręcznik dobrego programisty |
| Autor | [Robert C. Martin](https://en.wikipedia.org/wiki/Robert_C._Martin) |
| Wydawnictwo | Helion, [link do książki na stronie helion.pl](https://helion.pl/ksiazki/czysty-kod-podrecznik-dobrego-programisty-robert-c-martin,czykov.htm#section7_shift) |
| Tytuł oryginału | Clean Code: A Handbook of Agile Software Craftsmanship |

* Rozdział 2. Znaczące nazwy
    * Używaj nazw przedstawiających intencje
    * Unikanie dezinformacji
    * Tworzenie wyraźnych różnic
    * Tworzenie nazw, które można wymówić
    * Korzystanie z nazw łatwych do wyszukania
    * Unikanie wpisywania całych nazw: notacja węgierska, przedrostki składników
    * Nazywanie interfejsów i implementacji
    * Unikanie odwzorowania mentalnego (nie nazywaj zmiennej tekstowej i)
    * Nazwy klas (TFoo)
    * Nazwy metod (Z dużej litery)
    * Nie bądź dowcipny
    * Wybieraj jedno słowo na pojęcie (Słownik pojęciowy)
    * Nie twórz kalamburów!
    * Korzystanie z nazw dziedziny
    * Dodanie znaczącego kontekstu (pełna nazwa to nazwa klasy i nazwa metody)
    * Nie należy dodawać nadmiarowego kontekstu (nie powtarzaj kontekstu klasy w nazwie metody)
* Rozdział 3. Funkcje
    * Małe funkcje!
    * Bloki i wcięcia
    * Wykonuj jedną czynność
    * Sekcje wewnątrz funkcji
    * Jeden poziom abstrakcji w funkcji
    * Czytanie kodu od góry do dołu zasada zstępująca
    * Instrukcje switch
    * Korzystanie z nazw opisowych
    * Argumenty funkcji
    * Często stosowane funkcje jednoargumentowe
    * Funkcje dwuargumentowe
    * Funkcje trzyargumentowe
    * Argumenty obiektowe (OK)
    * Listy argumentów
    * Czasowniki i słowa kluczowe
    * Unikanie efektów ubocznych
    * Rozdzielanie poleceń i zapytań
    * Stosowanie wyjątków zamiast zwracania kodów błędów
    * Wyodrębnienie bloków try-catch
    * Obsługa błędów jest jedną operacją
* Rozdział 4. Komentarze
    * Komentarze nie są szminką dla złego kodu
    * Czytelny kod nie wymaga komentarzy
    * Dobre komentarze
    * Komentarze prawne
    * Komentarze informacyjne
    * Wyjaśnianie zamierzeń
    * Ostrzeżenia o konsekwencjach
    * Komentarze TODO
    * Wzmocnienie
    * Komentarze Javadoc w publicznym API
    * Nie używaj komentarzy, jeżeli można użyć funkcji lub zmiennej
    * Zakomentowany kod
    * Nadmiar informacji
    * Nieoczywiste połączenia
* Rozdział 5. Formatowanie
    * Przeznaczenie formatowania
    * Formatowanie pionowe
    * Metafora gazety
    * Pionowe odstępy pomiędzy segmentami kodu
    * Gęstość pionowa
    * Odległość pionowa
    * Wcięcia
    * Zasady zespołowe
    * Zasady formatowania wujka Boba
* Rozdział 6. Obiekty i struktury danych
    * Abstrakcja danych
    * Antysymetria danych i obiektów
    * Prawo Demeter
    * Obiekty transferu danych (Active Record)
* Rozdział 7. Obsługa błędów
    * Użycie wyjątków zamiast kodów powrotu
    * Rozpoczynanie od pisania instrukcji try-catch-finally
    * Użycie niekontrolowanych wyjątków
    * Dostarczanie kontekstu za pomocą wyjątków
    * Definiowanie klas wyjątków w zależności od potrzeb wywołującego
    * Definiowanie normalnego przepływu
    * Nie zwracamy null
    * Nie przekazujemy null
* Rozdział 9. Testy jednostkowe
    * Trzy prawa TDD
    * ...
* Rozdział 10. Klasy
    * Organizacja klas
        * Hermetyzacja
    * Klasy powinny być małe!
        * Zasada pojedynczej odpowiedzialności
        * Spójność
        * Utrzymywanie spójności powoduje powstanie wielu małych klas
    * Organizowanie zmian
        * Izolowanie modułów kodu przed zmianami
* Rozdział 11. Systemy
    * Jak budowałbyś miasto?
    * Oddzielenie konstruowania systemu od jego używania
        * Wydzielenie modułu main
        * Fabryki
        * Wstrzykiwanie zależności
    * Testowanie architektury systemu
* Rozdział 17. Zapachy kodu i heurystyki
    * ...


### Zasady SOLID

![(c) Mohit Rajput - mohitrajput987 Apr 30 '17 https://dev.to/mohitrajput987/coding-best-practices-part-1-naming-conventions--class-designing-principles](https://res.cloudinary.com/practicaldev/image/fetch/s--VIyIhNNs--/c_limit%2Cf_auto%2Cfl_progressive%2Cq_auto%2Cw_880/https://s11.postimg.org/r5n293c4z/SOLID.jpg)

1. SRP = Single Responsibility Principle
    * Klasa powinna być odpowidzialna za jedną rzecz
2. OCP = Open/Close Principle
    * Klasa musi być otwarta na rozbudowę, ale zamknięta na poprawę dobrego kodu
    * Podejrzane: wielopoziomowe if-ów / casów
    * Rozwiązania OOP: abstrakcja, polimorfizm, fabryki
    * Użycie wzorca Fabryki Abstrakcyjnej
        * dostęp do wielu fabryk przez jeden interfejs (klasę abstrakcyjną)
        * dostęp do wyprodukowanych obiektów przez wspólny interfejs lub klasę abstrakcyjną
        * [przykład w C++](https://sourcemaking.com/design_patterns/abstract_factory/cpp/before-after)
        * [przykład w C# / Java](https://refactoring.guru/design-patterns/abstract-factory)
        * [przykład w Delphi](https://www.devfields.com/design-patterns-abstract-factory-pattern/)
3. LSP = Liskov Substition Principle
    * Poprawnie zbudowane drzewo dziedziczenia nie wymaga nadpisywania metod ojca, w celu poprawnego działania algorytmu
    * ```TKwadrat != class(TProstokąt)```
        * zobacz jak działa metoda WyliczPole
    * poprawnie: 
        ```
        TKwadrat = class(TFigure)
        TProstokąt = class(TFigure)
        ```
4. ISP = Interface Segreation Principle
    * Podziel interfejsy na mniejsze (spójne dziedzinowo)
5. DIP = Dependency Invertion Principle
    * Klasy z dwóch różnych warstw separuj interfejsami
    * Przykład: Klasy dziedzinowe (realizujące funkcjonalność) oraz klasy składujące dane (zbiory danych).
    * Jeśli klasa warstwy wyższej tworzy obiekty warstwy niższej to można zastosować: IoC = Inversion of Control
    * Trzech muszkieterów: DIP, IoC, DI (Dependency Injection)

### Prawo Demeter

LoD = Law of Demeter

[Prezentacja na slideshare.net](https://www.slideshare.net/vladimirtsukur/law-of-demeter-objective-sense-of-style)


