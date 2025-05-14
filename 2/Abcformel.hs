
-- Die Formel aus der Aufgabe, in Codeform umgeschrieben 
abcformelLet :: Double -> Double -> Double -> (Double, Double)
abcformelLet a b c = 
    let x1 = (-b + sqrt (b * b - 4 * a * c)) / (2 * a)
        x2 = (-b - sqrt (b * b - 4 * a * c)) / (2 * a)
    in (x1, x2)

abcformelWhere :: Double -> Double -> Double -> (Double, Double)
abcformelWhere a b c = (x1, x2)
    where 
        x1 = (-b + sqrt (b * b - 4 * a * c)) / (2 * a)
        x2 = (-b - sqrt (b * b - 4 * a * c)) / (2 * a)
