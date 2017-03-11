module MyMap where

-- myMap in terms of foldr
myMap :: (a -> b) -> [a] -> [b]
myMap f xs = foldr (\a acc -> f a : acc) [] xs

{-
λ> myMap (+1) []
[]
λ> myMap (+1) [1..5]
[2,3,4,5,6]
-}
