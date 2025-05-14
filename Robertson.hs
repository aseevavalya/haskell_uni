robertson :: Integer -> Integer -> Integer -> Integer
robertson t m j = 
    let 
        a = m + 10
        bBruch = fromIntegral (m - 14) / 12 -- 
        b = (if bBruch >= 0 then floor bBruch else ceiling bBruch) + j
        cBruch = fromIntegral a / 13 
        c = a - 12 * (if cBruch >= 0 then floor cBruch else ceiling cBruch)
        dBruch = fromIntegral (13 * c - 1) / 5
        d = if dBruch >= 0 then floor dBruch else ceiling dBruch
        eBruch = fromIntegral (5 * (b `mod` 100)) / 4
        e = if eBruch >= 0 then floor eBruch else ceiling eBruch
        w = (d + t + 77 + e + (b `div` 400) - 2 * (b `div` 100)) `mod` 7 
    in w 
{-
    Integer durch integer ist nicht genau teilbar, deswegen, um zuerst genauere Zahl zu bekommen, 
    hab ich eine neue variable hergestellt und fromIntegral genutzt. Danach hab ich die Rundungsfunktionen gemäß
    in der Aufgabe angegebenen Regel (auf- oder abgerundet) für jeden Bruch in eckigen Klammern verwendet.
-}
wochentag :: Integer -> String
wochentag w = case w of 
    0 -> "Sonntag"
    1 -> "Montag"
    2 -> "Dienstag"
    3 -> "Mittwoch"
    4 -> "Donnerstag"
    5 -> "Freitag"
    6 -> "Samstag"

{-
    Hier nutze ich case of, weil die Konstruktion mit if zu massiv wäre. 
-}