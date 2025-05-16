Ordner 3 – Haskell: Datentypen und Geometrie

In diesem Ordner befinden sich drei Haskell-Dateien, die die Verwendung benutzerdefinierter Datentypen (mit und ohne Records) sowie einfache geometrische Operationen demonstrieren.

## Übersicht der Aufgaben

| Datei                   | Funktion / Thema                    | Beschreibung |
|------------------------|--------------------------------------|--------------|
| `Datentypen.hs`        | Punkt, Bruch, Bewertung, Datum, Uhrzeit, Kassenbon, Mensaessen | Verwendung von Produkttypen und Summentypen mit Record-Syntax |
|                        | `kassenbon0`, `kassiererVonKassenbon`, `jahrVomKassenbon` etc. | Beispiel-Kassenbon und Zugriffsfunktionen auf Felder |
| `Datentypen-alternativ.hs` | Bruch, Datum, Uhrzeit, Kassenbon, Mensaessen | Alternative Definitionen ohne Record-Syntax, mit selbstgeschriebenen Selektorfunktionen |
| `Geometrie.hs`         | Gerade, Punkt, Schnittpunkt, Fläche | Geometrische Berechnungen: Schnittpunkt von Geraden, Fläche zwischen Geraden im Intervall |

---

## Ausführen

### Voraussetzungen

- GHC oder GHCi installiert (Glasgow Haskell Compiler)  
  → [Download-Link](https://www.haskell.org/ghcup/)

### Start in GHCi

```bash
ghci Datentypen.hs
```

Beispiele:

```haskell
kassiererVonKassenbon kassenbon0
jahrVomKassenbon kassenbon0
```

```bash
ghci Geometrie.hs
```

Beispiel:

```haskell
schnittpunkt (Line 2 1) (Line (-1) 4)
flaecheZwischenGeraden (Line 2 1) (Line (-1) 4) 0 3
```

---

Alle Datentypen und Konstruktoren sind nachvollziehbar kommentiert und zeigen den praktischen Unterschied zwischen Records und klassischen Konstruktionen.
