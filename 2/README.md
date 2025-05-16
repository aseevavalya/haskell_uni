# Ordner 2 – Haskell: Mathematische und logische Operationen

In diesem Ordner befinden sich mehrere Haskell-Dateien mit Funktionen zur Berechnung mathematischer Ausdrücke, logischen Operationen, Schaltjahrprüfung und Datumsberechnung.

## Übersicht der Aufgaben

| Datei             | Funktion / Aufgabe           | Beschreibung |
|------------------|------------------------------|--------------|
| `Abcformel.hs`   | `abcformelLet`, `abcformelWhere` | Umsetzung der Mitternachtsformel (quadratische Gleichung) mit `let` und `where` |
| `Natzahlen.hs`   | `plus`, `mal`, `potenz`      | Rekursive Berechnung von Addition, Multiplikation und Potenz natürlicher Zahlen |
| `LogOperationen.hs` | `oder`, `und`, `nicht`, `darausFolgt`, `genauDannWenn`, `entwederOder` | Implementierung logischer Operatoren mit boolescher Algebra |
| `Robertson.hs`   | `robertson`, `wochentag`     | Algorithmus zur Berechnung des Wochentags für ein Datum |
| `Schaltjahr.hs`  | `schaltjahrIf`, `schaltjahrGuards`, `schaltjahrBool` | Verschiedene Varianten zur Prüfung auf Schaltjahr mit `if`, Guards und logischen Ausdrücken |

---

## Ausführen

### Voraussetzungen

- GHC oder GHCi installiert (Glasgow Haskell Compiler)  
  → [Download-Link](https://www.haskell.org/ghcup/)

### Start in GHCi

```bash
ghci Abcformel.hs
```

Beispiel:

```haskell
abcformelLet 1 (-3) 2
```

Weitere Dateien können ähnlich geladen und getestet werden:

```bash
ghci Natzahlen.hs
ghci LogOperationen.hs
ghci Robertson.hs
ghci Schaltjahr.hs
```

Beispiele:

```haskell
plus 2 3
wochentag (robertson 1 1 2024)
schaltjahrGuards 2024
```
