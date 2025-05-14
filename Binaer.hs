-- 1, 2. Representation von Bits 
data Bit = One | Zero deriving (Eq, Show)
type Bits = [Bit]

{- 
doSomething :: Bits -> Bit
doSomething (One:bs) = [One, Zero, Zero]
doSomething _ = [Zero, Zero]
-}

-- 3. Umwandeln natürliche Zahl in Binärdarstellung 
integer2Bits :: Integer -> Bits 
integer2Bits n 
    | n < 0 = error "Nur natürliche Zahlen!"
    | otherwise = toBits n
    where 
        toBits :: Integer -> Bits
        toBits 0 = [] -- weiter teilen wir nicht 
        toBits m = 
            let x = m `div` 2 -- merken die Zahl, die weiter geteilt werden muss
                y = m `mod` 2 -- merken den Rest fürs Ergebnis
                z = if y == 0 then Zero else One
            in toBits x ++ [z] -- erste z ist am Ende 

-- 4. Umwandeln eine Liste von Bits in einen Binärstring und zurück
bits2String :: Bits -> String
bits2String [] = []
bits2String (Zero:as) = '0' : bits2String as -- head == Zero = 0 
bits2String (One:as) = '1': bits2String as -- head == One = 1 

string2Bits :: String -> Bits 
string2Bits [] = []
string2Bits ('0':as) = Zero : string2Bits as
string2Bits ('1':as) = One : string2Bits as

-- 5. Umwandeln eine natürliche Zahl in einen Binärstring
integer2binString :: Integer -> String
integer2binString n 
    | n < 0 = error "Nur positive Zahlen!"
    | otherwise = bits2String (integer2Bits n) 
-- umwandeln Int in Bits mit i2B, danach Bits in String (dafür haben wir schon früher die Funktionen geschrieben)

--6. Konvertieren eine Liste von Bits in natürliche Zahl 
bits2Integer :: Bits -> Integer 
bits2Integer [] = 0
bits2Integer (a:as) = 
    let x = if a == Zero then 0 else 1
        power = 2^length as
    in x * power + bits2Integer as -- entsprechend der Formel a1 * 2^n-1 + a1 * 2^n-2...an * 2^0

-- 7. Konvertieren string Zahl in integer Zahl 
bitString2Integer :: String -> Integer 
bitString2Integer s = bits2Integer (string2Bits s)