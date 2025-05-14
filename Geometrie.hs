-- eine Gerade in der Normalform y = m * x + n
data Gerade = Line {m :: Double, n :: Double} deriving Show

-- berechnen y einer Geraden für gegebenes x
auswerten :: Gerade -> Double -> Double 
auswerten (Line m n) x = m * x + n    

-- ein Punkt (x, y)
data Punkt = Point {x :: Double, y :: Double} deriving Show

schnittpunkt :: Gerade -> Gerade -> Punkt
schnittpunkt (Line m1 n1) (Line m2 n2) 
    | m1 == m2 = error "Die Geraden sind parallel" -- wenn die Steigungen gleich sind, sind die Geraden parallel
    | otherwise = Point x y -- sonst berechnen Werte x und y für Schnittpunkt aus Normalform der Gerade
    where
        x = (n2 - n1) / (m1 - m2) -- berechnen x: m1 * x + n1 == m2 * x + n2; (m1 - m2) * x = n2 - n1; x = (n2 - n1) / (m1 - m2)
        y = auswerten (Line m1 n1) x -- berechnen y mit auswerten

-- die fläche zwischen 2 Geraden im Intervall [a, b]
flaecheZwischenGeraden :: Gerade -> Gerade -> Double -> Double -> Double
flaecheZwischenGeraden f g a b = ((h1 + h2) / 2) * (b - a) -- fläche einer Trapezform, da die Fläche zwischen 2 Geraden im Intervall [a, b] ein Trapez bildet 
    where
        h1 = abs (auswerten f a - auswerten g a) -- h1 (links) ist Differenz der y-Werte bei x = a
        h2 = abs (auswerten f b - auswerten g b) -- h2 (rechts) ist Differenz der y-Werte bei x = b