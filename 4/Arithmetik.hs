data Ausdruck
  = Konstante Integer         
  | Variable  String           
  | Summe     Ausdruck Ausdruck
  | Differenz Ausdruck Ausdruck
  | Produkt   Ausdruck Ausdruck
  | Quotient  Ausdruck Ausdruck
  deriving (Show)

-- 1. ausdruckNachString
-- Wandelt einen Ausdruck in seine Haskell-String-Darstellung um.
ausdruckNachString :: Ausdruck -> String
ausdruckNachString (Konstante n) = show n
ausdruckNachString (Variable v) = v
ausdruckNachString (Summe a b) = "(" ++ ausdruckNachString a ++ " + " ++ ausdruckNachString b ++ ")"
ausdruckNachString (Differenz a b) = "(" ++ ausdruckNachString a ++ " - " ++ ausdruckNachString b ++ ")"
ausdruckNachString (Produkt a b) = "(" ++ ausdruckNachString a ++ " * " ++ ausdruckNachString b ++ ")"
ausdruckNachString (Quotient a b) = "(" ++ ausdruckNachString a ++ " / " ++ ausdruckNachString b ++ ")"

-- Alle Ausdrücke werden in Klammern dargestellt,
-- um die Auswertungsreihenfolge klar zu machen.

-- 2. belegungVonVariable
-- Sucht den Wert einer Variablen in der Belegungsliste.
belegungVonVariable :: String -> [(String, Integer)] -> Integer
belegungVonVariable _ [] = error "Nicht definiert"
belegungVonVariable name ((x, y):ys)
  | name == x = y                             -- Gefundener Wert wird zurückgegeben
  | otherwise = belegungVonVariable name ys   -- Weiter suchen, falls ungleich

-- 3. auswerten
-- Wertet einen Ausdruck unter gegebener Variablenbelegung aus.
auswerten :: Ausdruck -> [(String, Integer)] -> Ausdruck
auswerten (Konstante n) _ = Konstante n
-- Wenn der Ausdruck eine Konstante ist, ignorieren wir die Belegungsliste.

auswerten (Variable v) belegung   =
  -- Variable wird durch ihre Belegung zu einer Konstante
  Konstante (belegungVonVariable v belegung)

auswerten (Summe a b) belegung =
  let Konstante x = auswerten a belegung  -- Teil-Ausdruck a auswerten
      Konstante y = auswerten b belegung  -- Teil-Ausdruck b auswerten
  in Konstante (x + y)                    -- Ergebnis als neue Konstante

auswerten (Differenz a b) belegung =
  let Konstante x = auswerten a belegung
      Konstante y = auswerten b belegung
  in Konstante (x - y)

auswerten (Produkt a b) belegung   =
  let Konstante x = auswerten a belegung
      Konstante y = auswerten b belegung
  in Konstante (x * y)

auswerten (Quotient a b) belegung  =
  let Konstante x = auswerten a belegung
      Konstante y = auswerten b belegung
  -- Ganzzahldivision wird durch `div` durchgeführt
  in Konstante (x `div` y)

-- Die Funktion auswerten wendet sich rekursiv auf Unterausdrücke an,
-- bis nur noch Konstanten übrig bleiben, und kombiniert diese.
