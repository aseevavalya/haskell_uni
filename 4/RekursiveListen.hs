module RekursiveListen where 

-- 1. Ob eine Liste leer ist
istLeer :: [a] -> Bool 
istLeer [] = True 
istLeer _ = False 

-- 2. Hängt ein Element an das Ende der Liste an 
snoc :: [a] -> a -> [a]
snoc [] x = [x] 
snoc (a:as) x = a : snoc as x

-- 3. Gibt die Länge der übergebenen Liste zurück
laenge :: [a] -> Int 
laenge [] = 0 
laenge (a:as) = 1 + laenge as

-- 4. Erstes Element 
-- wirft Fehler bei leerer Liste
erstesElement :: [a] -> a
erstesElement [] = error "Die Liste ist Leer"
erstesElement (a:_) = a 

-- 5. Rest 
-- wirft Fehler bei leerer Liste
rest :: [a] -> [a]
rest [] = error "Die Liste ist Leer"
rest (_:as) = as

-- 6. Letztes Element 
-- wirft Fehler bei leerer Liste
letztesElement :: [a] -> a 
letztesElement [] = error "Die Liste ist leer"
letztesElement [a] = a 
letztesElement (_:as) = letztesElement as 

-- 7. Anfang
-- wirft Fehler bei leerer Liste
anfang :: [a] -> [a]
anfang [] = error "Die Liste ist leer"
anfang [_] = []
anfang (a:as) = a : anfang as

-- 8. Gibt die ersten n Elemente zurück 
nimm :: Int -> [a] -> [a]
nimm n _ 
    | n <= 0 = []
nimm _ [] = [] -- nutzen auch wenn n mehr als die menge elementen der liste 
nimm n (a:as) = a: nimm (n - 1) as

-- 9. Lässt die ersten n Elemente weg
verwerfe :: Int -> [a] -> [a]
verwerfe _ [] = []
verwerfe n as
    | n <= 0 = as
verwerfe n (_:as) = verwerfe (n - 1) as

-- 10. Produkt aller in der Liste enthaltenen Elemente 
produkt :: (Num a) => [a] -> a  -- (Num a) erforderlich, damit (*) definiert ist
produkt [] = 1 -- neutrales Element der Multiplikation 
produkt (a:as) = a * produkt as

-- 11. Verdoppelt die Werte der Liste
verdopple :: (Num a) => [a] -> [a]
verdopple [] = []
verdopple (a:as) = a + a : verdopple as

-- 12. Verkettet die zwei übergebenen Listen 
verkette :: [a] -> [a] -> [a]
verkette [] bs = bs
verkette (a:as) bs = a : verkette as bs

-- 13. Umgekehrter Reihenfolge 
rueckwaerts :: [a] -> [a]
rueckwaerts [] = []
rueckwaerts (a:as) = snoc (rueckwaerts as) a 
-- nutzen snoc, um das erste Element ans Ende der rekursiv gedrehten Liste zu hängen

-- 14. True - wenn alle Elemente in der Liste True sind 
und :: [Bool] -> Bool
und [] = True
und (False:_) = False
und (True:as) = und as

-- 15. Negieren boolsche Werte 
nicht :: [Bool] -> [Bool]
nicht [] = [] 
nicht (True:as) = False : nicht as
nicht (False:as) = True : nicht as

-- 16. Teilt die Liste an der durch die ganze Zahl angegebenen Position auf 
aufteilen :: Int -> [a] -> ([a], [a])
aufteilen _ [] = ([], [])
aufteilen n as 
    | n <= 0 = ([], as) 
aufteilen n (a:as) =
    let (links, rechts) = aufteilen (n - 1) as
    in (a:links, rechts)

-- 17. Verzahnen 2 Listen 
verzahne :: [a] -> [b] -> [(a, b)]
verzahne [] _ = [] -- ist eine Liste länger als die andere, soll der Rest der l. Liste verworfen werden 
verzahne _ [] = [] -- das gleiche
verzahne (a:as) (b:bs) = (a, b) : verzahne as bs

-- 18. Ersetzen das n-te Element durch das Element e 
aktualisiere :: [a] -> Int -> a -> [a]
aktualisiere [] _ _ = error "Die Liste ist Leer"
aktualisiere (_:as) 0 e = e : as 
{- Element mit Index 0 wird ersetzt, wenn wir rekursiv n == 0 erreichen
(oder in dem fall, wo n = 0 gegeben wurde) 
-}  
aktualisiere (a:as) n e 
    | n > 0 = a : aktualisiere as (n - 1) e 
    | otherwise = error "Index darf nicht negativ sein"
