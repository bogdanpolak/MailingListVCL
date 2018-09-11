# Konfiguracja stanowiska

### Konfiguracja podana w wymaganiach do warsztatu (przypomnienie).

* Instalacja serwerów SQL
    1. Zainstalowanie i konfiguracja serwera InterBase lub Firebird (do wyboru jeden z nich)
    2. Stworzenie pustej bazy danych InterBase / Firebird
        * Artykuł w serwise reedit.com:
            * [serwer InterBase](https://www.reddit.com/user/BogdanPolakBSC/comments/9cymje/)
            * [serwer Firebird](https://www.reddit.com/user/BogdanPolakBSC/comments/9cyrh2/)
    3. Dodanie definicji połączenia FireDAC do stworzonej w kroku powyżej bazy.
    4. *Opcjonalnie: instalacja MySQL (nie zostanie użyta w czasie warsztatów)*
        * *Można wykorzystać jako ćwiczenie z FireDAC-a*
        * *Uniwersalizacja platformy bazodanowej InterBase -> mySQL*
    5. Sprawdzenie czy baza jest Unicode-owa.
        * Uruchomienie skryptu, np. przez FireDAC Explorer:
        ```
        CREATE TABLE AAA (F1 VARCHAR(50) CHARACTER SET UTF8);
        COMMIT;
        INSERT INTO AAA VALUES ('Οὐχὶ ταὐτὰ παρίσταταί');
        COMMIT;
        SELECT * FROM AAA;
        DROP TABLE AAA;
        ```
        * Na konsoli powinny pojawić się greckie słowa z tabeli AAA.
* Konto na Github
    * Sprawdzenie dostępu do aktualnego konta 
    * Założenie nowego konta na GitHub: https://github.com/join (niezbędne do pracy w czasie warsztatów)

***

# Konfiguracja na starcie warsztatów

Czyli co jeszcze trzeba zrobić (lub sprawdzić) na początku warsztatów warsztatów.

1. **Dostęp do Internetu**
    * Parametry WiFi:
        * [Golden Floor Tower - Warszawa] 
            * sieć: ```..```  
            * hasło: ```..```

2. **Ta instrukcja Configuration.md**
    * Zalogowanie się do swojego konta github.com
    * Otwarcie tej instrukcji:
    	* https://github.com/bogdanpolak/
	* Repozytorium: MailingListVCL
    	* Dokument: Configuration.md

3. **Klient Git dla Windows - instalacja**
    * Pobranie i instalacja Git dla Windows: https://git-scm.com/download/win
    * Zainstalowanie Manager'a autentykacji dla Git Windows: https://github.com/Microsoft/Git-Credential-Manager-for-Windows

4. **RAD Studio IDE**
    * Ustawienie opcji IDE:
        * Git Executable
        * Remote authentication data
        ![](./assets/opcje-IDE-dla-Gita.png)
    * Instalacja ChromeTabs przez GetIt:
        * menu: Tools -> GetIt Package Manager
    	* ![](./assets/getit-manager.png)

5. **Sklonowanie tego projektu**
    * Otwarcie projektu:
        * https://github.com/bogdanpolak/MailingListVCL
    * Stworzenie klona w github:
    ![github fork button](./assets/github-fork.png)
    * Uruchomienie linii poleceń Windows - **CMD.EXE**
    * Przejście do folderu w którym mają być źródła projektu
        * polecenia: ```cd``` i ```dir```
    * ```git clone https://github.com/{{user}}/MailingListVCL.git```

6. **Konsola Windows**
    * Skopiowanie pliku OpenConsole.bat z podfolderu assets do folderu głównego projektu

7. **Dodanie aliasów git-a**
    * modyfikacja pliku pliku .gitconfig
        * Lokalizacja: C:\Users\{{użytkownik}}
        * dodanie poniższych aliasów:
```
[alias]
	graph1 = log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all
	graph2 = log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n''          %C(white)%s%C(reset) %C(dim white)- %an%C(reset)' --all
	lg = !"git graph1"
```
