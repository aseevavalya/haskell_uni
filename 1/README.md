# Ordner 1 – Haskell: Fall und Zylinder

In diesem Ordner befinden sich zwei Haskell-Module mit verschiedenen Funktionen zur Berechnung von physikalischen und geometrischen Größen.

## Übersicht der Aufgaben

| Datei        | Funktion / Aufgabe                           | Beschreibung                                                   |
|--------------|----------------------------------------------|----------------------------------------------------------------|
| `Fall.hs`    | `fallstrecke`                                | Berechnung der Fallstrecke mit konstanter g direkt in der Formel |
|              | `fallGlobal`                                 | Verwendung einer global definierten Fallbeschleunigung `g`      |
|              | `fallWhere`                                  | Verwendung von `where` zur lokalen Definition von `g'`          |
|              | `fallLet`                                    | Verwendung von `let ... in` zur Definition von `g'`             |
|              | `fallIf`                                     | Fehlerbehandlung mit `if`: negative Zeit wird abgefangen        |
|              | `fallGuard`                                  | Fehlerbehandlung mit `Guard`-Syntax                             |
| `Zylinder.hs`| `volumenAusRadiusUndHoehe`                   | Volumen aus Radius und Höhe (`V = π * r² * h`)                 |
|              | `radiusAusVolumenUndHoehe`                   | Radius aus Volumen und Höhe berechnen                          |
|              | `hoeheAusVolumenUndRadius`                   | Höhe aus Volumen und Radius berechnen                          |
|              | `oberflaecheAusRadiusUndHoehe`               | Oberfläche aus Radius und Höhe (`A = 2πr² + 2πrh`)             |
|              | `radiusAusOberflaecheUndHoehe`               | Radius aus Oberfläche und Höhe                                 |
|              | `hoeheAusOberflaecheUndRadius`               | Höhe aus Oberfläche und Radius                                 |
|              | `volumenAusOberflaecheUndHoehe`              | Volumen aus Oberfläche und Höhe (indirekt)                     |
|              | `volumenAusOberflaecheUndRadius`             | Volumen aus Oberfläche und Radius                              |
|              | `oberflaecheAusVolumenUndRadius`             | Oberfläche aus Volumen und Radius                              |
|              | `oberflaecheAusVolumenUndHoehe`              | Oberfläche aus Volumen und Höhe                                |

---

## Ausführen

### Voraussetzungen

- GHC oder GHCi installiert (Glasgow Haskell Compiler)  
  → [Download-Link](https://www.haskell.org/ghcup/)

### Start in GHCi

```bash
ghci Fall.hs
```

Beispiel für eine Funktion:

```haskell
fallstrecke 2
```

Oder:

```bash
ghci Zylinder.hs
```

Beispiel:

```haskell
volumenAusRadiusUndHoehe 3 5
```