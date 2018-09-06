# Konfiguracja stanowiska

### Konfiguracja dla potrzeb GIT'a

1. RAD Studio IDE:
    * Pobranie i instalacja Git dla Windows: https://git-scm.com/download/win
    * Ustawienie opcji IDE:
        * Git Executable
        * Remote uthentication data
        ![](./assets/opcje-IDE-dla-Gita.png)
    * Zainstalowanie Manager'a autentykacji dla Git Windows: https://github.com/Microsoft/Git-Credential-Manager-for-Windows
2. Konsola Windows - Linia poleceń CMD
    * Skopiowanie pliku OpenConsole.bat z podfolderu assets do folderu głównego projektu
    Dodanie aliasów do pliku .gitconfig
        * Lokalizacja: C:\Users\{{uzytkownik}}
        * dodanie poniższych aliasów
```
[alias]
	graph1 = log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all
	graph2 = log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n''          %C(white)%s%C(reset) %C(dim white)- %an%C(reset)' --all
	lg = !"git graph1"
```