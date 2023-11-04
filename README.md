
# kjv-ubg 

## Uwspółcześniona Biblia Gdańska w tearminalu
...

## W planach dodanie apokryfów ⛪
tak jak w pierwszych przekładach KJV, BG

## Użycie
```
użycie: kjv [flagi] [odnośnik...]

Flagi:
  -A liczba  pokaż liczbę wersetów kontekstu po dopasowanych wersetach
  -B liczba  pokaż liczbę wersetów kontekstu przed dopasowanymi wersetami
  -C         pokaż dopasowane wersety w kontekście rozdziału
  -e         wyróżnianie numerów rozdziałów i wersetów
             (domyślne, gdy wyjście jest na konsoli)
  -p         wyjście do programu less z grupowaniem rozdziałów, odstępami, wcięciami
             i zawijaniem wierszy
             (domyślne, gdy wyjście jest na TTY)
  -l         lista ksiąg
  -h         pokaż pomoc

Odnośnik:
    <Księga>
        Indywidualna księga
    <Księga>:<Rozdział>
        Indywidualny rozdział księgi
    <Księga>:<Rozdział>:<Werset>[,<Werset>]...
        Indywidualny werset(wersety) z określonego rozdziału księgi
    <Księga>:<Rozdział>-<Rozdział>
        Zakres rozdziałów w księdze
    <Księga>:<Rozdział>:<Werset>-<Werset>
        Zakres wersetów w rozdziale księgi
    <Księga>:<Rozdział>:<Werset>-<Rozdział>:<Werset>
        Zakres rozdziałów i wersetów w księdze

    /<Wyszukiwanie>
        Wszystkie wersety pasujące do wzorca
    <Księga>/<Wyszukiwanie>
        Wszystkie wersety w księdze pasujące do wzorca
    <Księga>:<Rozdział>/<Wyszukiwanie>
        Wszystkie wersety w rozdziale księgi pasujące do wzorca
    usage: kjv [flags] [reference...]
```
    
## 👷♂

Aby skompilować kjv, możesz sklonować repozytorium, a następnie uruchomić polecenie make:
```
    git clone https://github.com/layeh/kjv.git
    cd kjv
    make
```
## Licencja

Domena publiczna
