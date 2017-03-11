module SquishMap where

-- maps a function over a list and concatenates the results.
squishMap :: (a -> [b]) -> [a] -> [b]
squishMap f xs = concat $ map f xs

{-
λ> squishMap (\x -> [1, x, 3]) [2]
[1,2,3]
λ> squishMap (\x -> "WO "++[x]++" HOO ") "123"
"WO 1 HOO WO 2 HOO WO 3 HOO "
-}

-- using fold
squishMap2 :: Foldable t => (t1 -> [a]) -> t t1 -> [a]
squishMap2 f xs = foldr (\a acc -> f a ++ acc) [] xs
{-
λ> squishMap2 (\x -> [1, x, 3]) [2]
[1,2,3]
λ> squishMap2 (\x -> "WO " ++ [x] ++ " OT ") "blah"
"WO b OT WO l OT WO a OT WO h OT "
-}

-- using fold, point-free
squishMap3 :: Foldable t => (t1 -> [a]) -> t t1 -> [a]
squishMap3 f = foldr (\a acc -> f a ++ acc) []

{-
λ> squishMap3 (\x -> [1, x, 3]) [2]
[1,2,3]
λ> squishMap3 (\x -> "WO " ++ [x] ++ " OT ") "blah"
"WO b OT WO l OT WO a OT WO h OT "
-}
