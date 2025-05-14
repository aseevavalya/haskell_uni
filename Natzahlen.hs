
-- Rekursiv zählen, wie viele Male man zur nächsten Zahl von b übergehen muss
plus :: Integer -> Integer -> Integer
plus a b = if a == 0 then b 
    else succ (plus (pred a) b)

-- Rekursiv zählen, wie viele Male man b zu b addieren muss 
mal :: Integer -> Integer -> Integer 
mal a b = if a == 0 || b == 0 then 0
    else plus b (mal (pred a) b)

-- Rekursiv zählen, wie viele Male man a mit a multiplizieren muss
potenz :: Integer -> Integer -> Integer
potenz a b = if b == 0 then 1
    else mal a (potenz a (pred b))