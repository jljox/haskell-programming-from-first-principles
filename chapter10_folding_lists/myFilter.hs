module Myfilter where

myFilter :: Foldable t => (a -> Bool) -> t a -> [a]
myFilter p xs = foldr (\a acc -> if p a then a : acc else acc) [] xs
{-
λ> myFilter odd [1..5]
[1,3,5]
λ> myFilter odd []
[]
-}

-- point-free
myFilter2 :: Foldable t => (a -> Bool) -> t a -> [a]
myFilter2 p = foldr (\a acc -> if p a then a : acc else acc) []
{-
λ> myFilter2 odd []
[]
λ> myFilter2 odd [1..5]
[1,3,5]
-}

