# Haskell-Übungsprojekt

Dieses Repository enthält eine Sammlung von Haskell-Programmierübungen, geordnet nach Themen in nummerierten Ordnern (`1` bis `4`). Ziel ist es, Grundkonzepte der funktionalen Programmierung mit Haskell zu lernen und zu üben – inklusive mathematischer Modelle, Datentypen, logischer Operatoren, rekursiver Datenstrukturen und Evaluation von Ausdrücken.

## Ordnerübersicht

| Ordner | Thema                                    | Inhalt |
|--------|------------------------------------------|--------|
| `1`    | Freier Fall und Zylinderberechnungen     | Physikalische Formeln (Fallgeschwindigkeit, Volumen, Fläche etc.) |
| `2`    | Logik, Arithmetik & Datumsfunktionen     | Boolesche Operatoren, Schaltjahrprüfung, Wochentag-Berechnung |
| `3`    | Datentypen & Geometrie                    | Benutzerdefinierte Datentypen mit und ohne Records, Punkt und Gerade |
| `4`    | Ausdrücke, Mengen & rekursive Listen      | Ausdrucksbaum mit Auswertung, Mengenfunktionen, Binärzahlen, Listenoperationen |

## Ausführern

### Voraussetzungen

- GHC oder GHCi installiert (Glasgow Haskell Compiler)  
  → [https://www.haskell.org/ghcup/](https://www.haskell.org/ghcup/)

### Start in GHCi

Beispiel:

```bash
cd 1
ghci Fall.hs
```

Im GHCi:

```haskell
fallstrecke 2
```

Für andere Ordner jeweils:

```bash
cd 2
ghci LogOperationen.hs

cd 3
ghci Geometrie.hs

cd 4
ghci Arithmetik.hs
```