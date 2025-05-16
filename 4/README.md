# Ordner 4 – Haskell: Ausdrücke, Binärzahlen, Mengenfunktionen und rekursive Listen

Dieser Ordner enthält vier Haskell-Dateien mit Übungen zu algebraischen Datentypen, binären Zahlen, Mengenoperationen und rekursiven Listenverarbeitung.

## Übersicht der Aufgaben

| Datei                  | Funktion / Thema                     | Beschreibung |
|------------------------|--------------------------------------|--------------|
| `Arithmetik.hs`        | `Ausdruck`, `ausdruckNachString`, `auswerten` | Darstellung und Auswertung von mathematischen Ausdrücken mit Variablen und Operatoren |
| `Binaer.hs`            | `Bit`, `integer2Bits`, `bits2Integer`, `bits2String`, `string2Bits` | Konvertieren von Ganzzahlen und Strings in binäre Darstellung und zurück |
| `Mengenfunktionen.hs`  | `istElement`, `istTeilmenge`, `vereinigung`, `schnitt` | Implementierung grundlegender Mengenoperationen für sortierte Listen |
| `RekursiveListen.hs`   | `istLeer`, `snoc`, `produkt`, `verkette`, `verzahne`, `aktualisiere` | Rekursive Funktionen zur Listenverarbeitung (inkl. Längenberechnung, Zugriff, Modifikation etc.) |

---

## Ausführen

### Voraussetzungen

- GHC oder GHCi installiert (Glasgow Haskell Compiler)  
  → [Download-Link](https://www.haskell.org/ghcup/)

### Start in GHCi

```bash
ghci Arithmetik.hs
```

Beispiel:

```haskell
ausdruckNachString (Summe (Konstante 3) (Variable "x"))
auswerten (Summe (Variable "x") (Konstante 2)) [("x", 5)]
```

Weitere Module laden:

```bash
ghci Binaer.hs
ghci Mengenfunktionen.hs
ghci RekursiveListen.hs
```

Beispiele:

```haskell
integer2Bits 10
bits2Integer [One, Zero, One, Zero]
istTeilmenge [1,2] [1,2,3]
verkette [1,2] [3,4]
verzahne [1,2] ['a','b']
```

---

Die Lösungen sind vollständig rekursiv und typisch für funktionale Programmierung mit Haskell gestaltet.
