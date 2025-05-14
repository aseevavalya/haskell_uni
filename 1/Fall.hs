fallstrecke :: Double -> Double 
fallstrecke t = 1/2 * 9.80665 * t^2

g :: Double 
g = 9.80665 
fallGlobal :: Double -> Double
fallGlobal t = 1/2 * g * t * t

fallWhere :: Double -> Double
fallWhere t = 1/2 * g' * t * t
    where g' = 9.80665

falLet :: Double -> Double
falLet t = let g' = 9.80665 
    in 1/2 * g' * t^2

fallIf :: Double -> Double
fallIf t = if t < 0
    then error "Nix negatives"
    else fallGlobal t

fallGuard :: Double -> Double
fallGuard t 
    | t < 0 = error "Nix Negatives"
    | otherwise = falLet t

