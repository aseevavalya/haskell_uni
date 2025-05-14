{-
    Ein jahr ist ein Schaltjahr, wenn:
    1. Es durch 4 teilbar ist,
    2. aber nicht durch 100 
    4. außer es ist durch 400 teilbar - dann ist es trotzdem ein Schaltjahr. 
    + jedes Jahr, das durch 400 teilbar ist, ist auch durch 4 teilbar
-}

schaltjahrIf :: Integer -> Bool
schaltjahrIf jahr  = 
    if mod jahr 400 == 0 then True
    else if mod jahr 100 == 0 then False 
    else if mod jahr 4 == 0 then True
    else False 

-- zuerst prüfen 400, weil wenn eine Zahl durch 400 teilbar ist, dann ist sie auch durch 4 teilbar

schaltjahrGuards :: Integer -> Bool 
schaltjahrGuards jahr
    | mod jahr 400 == 0 = True
    | mod jahr 100 == 0 = False
    | mod jahr 4 == 0 = True
    | otherwise = False 

schaltjahrBool :: Integer -> Bool
schaltjahrBool jahr = (mod jahr 4 == 0 && mod jahr 100 /= 0) || mod jahr 400 == 0
