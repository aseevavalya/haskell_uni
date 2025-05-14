-- 1. Ob ein Wert in einer Menge enthalten ist 
istElement :: Eq a => a -> [a] -> Bool -- nur datentypen, die vergleichbar sind 
istElement x [] = False 
istElement x (a:as) = if a == x then True else istElement x as
{-
Da unsere Mengelisten jedoch streng sortiert sind, könnte man als Typklasse Ord verwenden und mit einer Abbruchregel 
a > x = False die Suche deutlich effizienter gestalten 
-}

-- 2. Ob die erste übergebene Menge Teilmenge der 2. Menge ist 
istTeilmenge :: Ord a => [a] -> [a] -> Bool
istTeilmenge [] _ = True -- leere Menge ist immer Teilmenge 
istTeilmenge _ [] = False -- nichtleere Menge kann nicht Teilmenge der leere Menge sein 
istTeilmenge (a:as) (b:bs) 
    | a < b = False -- da Mengen sind streng sortiert 
    | a == b = istTeilmenge as bs -- prüfen weiter
    | otherwise = istTeilmenge (a:as) bs -- prüfen weiter 

-- 3. Ob die erste übergebene Menge ECHTE Teilmenge der 2. Menge ist 
istEchteTeilmenge :: Ord a => [a] -> [a] -> Bool 
istEchteTeilmenge a b = istTeilmenge a b && a /= b

-- 4. Vereinigungsmenge zweier Mengen 
vereinigung :: Ord a => [a] -> [a] -> [a]
vereinigung [] b = b 
vereinigung a [] = a 
vereinigung (a:as) (b:bs) 
    | a < b = a : vereinigung as (b:bs) -- der kleinere Wert kommt nur einmal 
    | a > b = b : vereinigung (a:as) bs 
    | otherwise = a : vereinigung as bs -- wenn a == b, fügen nur einmal hinzu und prüfen nächsten Wert aus beide Menge 

-- 5. Bestimmen die Schnittmenge zweier Menge 
schnitt :: Ord a => [a] -> [a] -> [a]
schnitt [] _ = [] -- Schnitt mit einer leeren Menge ist stets leer
schnitt _ [] = []
schnitt (a:as) (b:bs) 
    | a < b = schnitt as (b:bs) 
    | a > b = schnitt (a:as) bs 
    | otherwise = a : schnitt as bs -- Schnitt enthält alle Werte, die in beiden Mengen vorkommen (nur wenn a == b)