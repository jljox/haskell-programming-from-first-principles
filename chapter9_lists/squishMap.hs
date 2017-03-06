module SquishMap where

squishMap :: (a -> [b]) -> [a] -> [b]
squishMap f xs = concat $ map f xs

{-
λ> squishMap (\x -> [1, x, 3]) [2]
[1,2,3]
λ> squishMap (\x -> "WO "++[x]++" HOO ") "123"
"WO 1 HOO WO 2 HOO WO 3 HOO "
-}
