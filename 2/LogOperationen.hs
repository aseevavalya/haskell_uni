{-
    00 -> 0
    01 -> 1
    10 -> 1
    11 -> 1
-}
oder :: Bool -> Bool -> Bool 
oder = (||)

nicht :: Bool -> Bool
nicht = not 

{-
    00 -> 0
    01 -> 0
    10 -> 0
    11 -> 1
-}
und :: Bool -> Bool -> Bool
und a b = nicht (oder (nicht a) (nicht b))

-- // 2. möglichkeit

und2 :: Bool -> Bool -> Bool
a `und2` b = nicht ((nicht a) `oder` (nicht b)) -- wurde in der übung gezeigt 

{-
    00 -> 1
    01 -> 1
    10 -> 0
    11 -> 1
-}
darausFolgt :: Bool -> Bool -> Bool
darausFolgt a b = oder (nicht a) b

{-
    00 -> 1
    01 -> 0
    10 -> 0
    11 -> 1
-}
genauDannWenn :: Bool -> Bool -> Bool
genauDannWenn a b = und (darausFolgt a b) (darausFolgt b a)

{-
    00 -> 0
    01 -> 1
    10 -> 1
    11 -> 0
-}
entwederOder :: Bool -> Bool -> Bool
entwederOder a b = nicht (genauDannWenn a b)
