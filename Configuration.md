# Konfiguracja stanowiska

### Konfiguracja dla potrzeb GIT'a

1. Klient Git dla Windows
    * Pobranie i instalacja Git dla Windows: https://git-scm.com/download/win
    * Zainstalowanie Manager'a autentykacji dla Git Windows: https://github.com/Microsoft/Git-Credential-Manager-for-Windows
3. Konto na GitHab
    * Sprawdzenie dostepu do aktualnego konta 
    * Założenie nowego konta na GitHub: https://github.com/join (niezbędne do pracy w czasie warsztatów)
2. RAD Studio IDE:
    * Ustawienie opcji IDE:
        * Git Executable
        * Remote authentication data
        ![](./assets/opcje-IDE-dla-Gita.png)
3. Sklonowanie tego projekt (MailingListVCL)
    * ```git clone https://github.com/bogdanpolak/MailingListVCL.git```
3. Konsola Windows - Linia poleceń CMD
    * Skopiowanie pliku OpenConsole.bat z podfolderu assets do folderu głównego projektu
    * Dodanie aliasów do pliku .gitconfig
        * Lokalizacja: C:\Users\{{uzytkownik}}
        * dodanie poniższych aliasów
```
[alias]
	graph1 = log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all
	graph2 = log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n''          %C(white)%s%C(reset) %C(dim white)- %an%C(reset)' --all
	lg = !"git graph1"
```

### Instalacja serwerów SQL

1. Zainstalowanie i konfiguracja serwera InterBase lub Firebird (do wyboru jeden z nich)
2. Stworzenie pustej bazy danych InterBase / Firebird
    * Artykuł w serwise reedit.com:
        * [serwer InterBase](https://www.reddit.com/user/BogdanPolakBSC/comments/9cymje/)
        * [serwer Firebird](https://www.reddit.com/user/BogdanPolakBSC/comments/9cyrh2/)
3. Dodanie definicji połączenia FireDAC do stworzonej w kroku powyżej bazy.
