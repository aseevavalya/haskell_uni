-- alternative definitionen ohne record-syntax

-- BRUCH
data Bruch = Fraction Int Int
zaeler :: Bruch -> Int
zaeler (Fraction x _) = x

nenner :: Bruch -> Int
nenner (Fraction _ y) = y

-- DATUM (Datum braucht noch Monat)
data Monat = Januar | Februar | März | April | Mai | Juni | Juli | August | Septenber | Oktober | November | December

data Datum = Date Int Monat Int
tag :: Datum -> Int 
tag (Date t _ _) = t

monat :: Datum -> Monat
monat (Date _ m _) = m

jahr :: Datum -> Int
jahr (Date _ _ j) = j

-- UHRZEIT
data Uhrzeit = Time Int Int Int
stunden :: Uhrzeit -> Int
stunden (Time h _ _) = h

minuten :: Uhrzeit -> Int
minuten (Time _ m _) = m

sekunden :: Uhrzeit -> Int
sekunden (Time _ _ s) = s

-- KASSE
data Kasse = CashRegister Int String
kassenID :: Kasse -> Int 
kassenID (CashRegister i _) = i

nachname :: Kasse -> String 
nachname (CashRegister _ name) = name

-- MENSAESSEN
data Mensaessen = Tagessuppe | Essen1 | Essen2 | Bioessen | Vegetarisch | Aktionsessen 

-- KASSENBON
data Preis = Price Int Int
euro :: Preis -> Int
euro (Price e _) = e

cent :: Preis -> Int
cent (Price _ c) = c

data Kassenbon = Receipt Kasse Datum Mensaessen Preis 
kasse :: Kassenbon -> Kasse
kasse (Receipt kas _ _ _) = kas

datum :: Kassenbon -> Datum
datum (Receipt _ dat _ _) = dat

mensaessen :: Kassenbon -> Mensaessen
mensaessen (Receipt _ _ mensa _) = mensa

preis :: Kassenbon -> Preis
preis (Receipt _ _ _ pr) = pr
