module Zylinder where
{-
    V = pi * r^2 * h
    A = 2 * pi * r^2 + 2 * pi * r * h
-}

--    1. V = pi * r^2 * h
volumenAusRadiusUndHoehe :: Double -> Double -> Double
volumenAusRadiusUndHoehe r h
    | r < 0 || h < 0 = error "Ungültige Werte"
    | otherwise = pi * r^2 * h 

--    2. r = √(V / (pi * h))
radiusAusVolumenUndHoehe :: Double -> Double -> Double
radiusAusVolumenUndHoehe v h 
    | v < 0 || h <= 0 = error "Ungültige Werte"
    | otherwise = sqrt (v / (pi * h))

-- 3. h = V / (pi * r^2)
hoeheAusVolumenUndRadius :: Double -> Double -> Double
hoeheAusVolumenUndRadius v r 
    | v < 0 || r <= 0 = error "Ungültige Werte"
    | otherwise = v / (pi * r^2)

-- 4. A = 2 * pi * r^2 + 2 * pi * r * h
oberflaecheAusRadiusUndHoehe :: Double -> Double -> Double
oberflaecheAusRadiusUndHoehe r h 
    | r < 0 || h < 0 = error "Ungültige Werte" 
    | otherwise = 2 * pi * r^2 + 2 * pi * r * h 

-- 5. r = (-h +- √h^2 + 4 * A / 2pi) / 2
radiusAusOberflaecheUndHoehe :: Double -> Double -> Double
radiusAusOberflaecheUndHoehe a h 
    | a <= 0 || h < 0 = error "Ungültige Werte" 
    | otherwise = 
        let diskriminante = h^2 + 4 * (a / (2 * pi))
            wurzel = sqrt diskriminante
        in (-h + wurzel) / 2

-- 6. h = A - 2pi * r^2 / 2pi * r
hoeheAusOberflaecheUndRadius :: Double -> Double -> Double
hoeheAusOberflaecheUndRadius a r 
    | a < 0 || r <= 0 = error "Ungültige Werte" 
    | otherwise = (a - 2 * pi * r^2) / (2 * pi * r)

-- 7. 
volumenAusOberflaecheUndHoehe :: Double -> Double -> Double
volumenAusOberflaecheUndHoehe a h = 
    volumenAusRadiusUndHoehe (radiusAusVolumenUndHoehe a h) h 

-- 8. 
volumenAusOberflaecheUndRadius :: Double -> Double -> Double
volumenAusOberflaecheUndRadius a r = 
    volumenAusRadiusUndHoehe r (hoeheAusOberflaecheUndRadius a r)

-- 9. 
oberflaecheAusVolumenUndRadius :: Double -> Double -> Double
oberflaecheAusVolumenUndRadius v r = 
    oberflaecheAusRadiusUndHoehe r (hoeheAusVolumenUndRadius v r)

--10. 
oberflaecheAusVolumenUndHoehe :: Double -> Double -> Double
oberflaecheAusVolumenUndHoehe v h = 
    oberflaecheAusRadiusUndHoehe (radiusAusVolumenUndHoehe v h) h
