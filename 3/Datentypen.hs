-- Ein Datentyp beschreibt eine Sammlung zusammengehöriger Daten,
-- zum Beispiel zur Modellierung eines Objekts oder einer Struktur.

-- Produkttyp: kombiniert mehrere Werte zu einem neuen zusammengesetzten Typ.
-- (z. B. ein Datum mit Tag, Monat, Jahr)

-- Summentyp: stellt eine Auswahl von verschiedenen Varianten dar.
-- Jede Variante kann eigene Daten haben oder leer sein.

-- Aufzählungstyp: ein Sonderfall des Summentyps mit einer festen Anzahl von
-- Varianten ohne zusätzliche Felder. (z. B. Wochentage oder Monate)

-- a), b), c), d) -- 

-- Produkttyp 
data Punkt = Point {x :: Double, y :: Double} deriving Show
-- // auch möglich: data Punkt' = Point' Double Double
-- KONSTRUKTOR-TYPE: Point :: Double -> Double -> Punkt
-- SELEKTOR-FUNKTION: x :: Punkt -> Double; y :: Punkt -> Double

-- Produkttyp
data Bruch = Fraction {zaeler :: Int, nenner :: Int}
-- KONSTRUKTOR-TYPE: Fraction :: Int -> Int -> Bruch
-- SELEKTOR-FUNKTION: zaeler :: Bruch -> Int; nenner :: Bruch -> Int 

-- Summentyp
data Bewertung = Bestanden | Nichtbestanden | Nachzuarbeiten
-- KONSTRUKTOR-TYPE: Bestanden :: Bewertung 
-- SELEKTOR-FUNKTION: --

-- Summentyp 
data Wochentag = Montag | Dienstag | Mittwoch | Donnerstag | Freitag | Samstag | Sonntag
-- KONSTRUKTOR-TYPE: Montag :: Wochentag
-- SELEKTOR-FUNKTION: --

-- Summentyp 
data Monat = Januar | Februar | März | April | Mai | Juni | Juli | August | Septenber | Oktober | November | December deriving Show
-- KONSTRUKTOR-TYPE: Januar :: Monat 
-- SELEKTOR-FUNKTION: -- 

-- Produkttyp
data Datum = Date {tag :: Int, monat :: Monat, jahr :: Int} deriving Show
-- KONSTRUKTOR-TYPE: Date :: Int -> Monat -> Int -> Datum
-- SELEKTOR-FUNKTION: tag :: Datum -> Int; monat :: Datum -> Monat; jahr :: Datum -> Int

-- Produkttyp
data Uhrzeit = Time {stunden :: Int, minuten :: Int, sekunden :: Int}
-- KONSTRUKTOR-TYPE: Time :: Int -> Int -> Int -> Uhrzeit
-- SELEKTOR-FUNKTION: stunden :: Uhrzeit -> Int; minuten :: Uhrzeit -> Int; sekunden :: Uhrzeit -> Int 

-- Produkttyp
data Preis = Price {euro :: Int, cent :: Int} deriving Show
-- KONSTRUKTOR-TYPE: Price :: Int -> Int -> Preis
-- SELEKTOR-FUNKTION: euro :: Preis -> Int; cent :: Preis -> Int

-- Produkttyp
data Kasse = CashRegister {kassenID :: Int, nachname :: String} deriving Show
-- KONSTRUKTOR-TYPE: CashRegister :: Int -> String -> Kasse 
-- SELEKTOR-FUNKTION: kassenID :: Kasse -> Int; nachname :: Kasse -> String

-- Summentyp
data Mensaessen = Tagessuppe | Essen1 | Essen2 | Bioessen | Vegetarisch | Aktionsessen deriving Show
-- KONSTRUKTOR-TYPE: Tagessuppe :: Mensaessen
-- SELEKTOR-FUNKTION: --

-- Produkttyp
data Umzugskarton = Box {volumen :: Double, maxGewicht :: Double}
-- KONSTRUKTOR-TYPE: Box :: Double -> Double -> Umzugskarton
-- SELEKTOR-FUNKTION: volumen :: Umzugskarton -> Double; maxGewicht :: Umzugskarton -> Double

-- Produkttyp
data Kassenbon = Receipt 
    { kasse :: Kasse
    , datum :: Datum
    , essen :: Mensaessen
    , preis :: Preis } deriving Show
-- KONSTRUKTOR-TYPE: Receipt :: Kasse -> Datum -> Mensaessen -> Preis -> Kassenbon
-- SELEKTOR-FUNKTION: kasse :: Kassenbon -> Kasse; datum :: Kassenbon -> Datum; essen :: Kassenbon -> Mensaessen; preis :: Kassenbon -> Preis

-- e) -- 
-- beispiel kassenbon (deriving show bei kasse, datum + monat, mensaessen, preis um zu zeigen): 

kassenbon0 :: Kassenbon 
kassenbon0 = Receipt
    (CashRegister 22 "Lehmann") -- Kasse 
    (Date 2 Mai 2025)           -- Datum
    Essen2                      -- Mensaessen
    (Price 4 99)                -- Preis

-- f) -- 

-- welche kassierer saß an der Kasse?
kassiererVonKassenbon :: Kassenbon -> String
kassiererVonKassenbon bon = nachname (kasse bon)

-- in welchem Jahr wurde Bon ausgestellt?
jahrVomKassenbon :: Kassenbon -> Int
jahrVomKassenbon bon = jahr (datum bon)

-- wie viel wurde bezahlt?
preisVonKassenbon :: Kassenbon -> Preis
preisVonKassenbon = preis

-- an welchem tag wurde Bon ausgestellt?
tagVonKassenbon :: Kassenbon -> Int
tagVonKassenbon bon = tag (datum bon)
