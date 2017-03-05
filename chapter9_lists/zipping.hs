module Zipping where

-- 1 write own version of zip
zip' :: [a] -> [b] -> [(a, b)]
zip' [] _ = []
zip' _ [] = []
zip' (x:xs) (y:ys) = (x, y) : zip' xs ys

{-
λ> :l zipping.hs
[1 of 1] Compiling Zipping          ( zipping.hs, interpreted )
Ok, modules loaded: Zipping.
λ> zip [] []
[]
λ> zip' [] []
[]
λ> zip' [1..3] [4..10]
[(1,4),(2,5),(3,6)]
λ> zip' [] [4..10]
[]
λ> zip' [1..3] []
[]
-}

-- 2 write own version of zipWith
zipWith' :: (a -> b -> c) -> [a] -> [b] -> [c]
zipWith' _ [] _ = []
zipWith' _ _ [] = []
zipWith' f (x:xs) (y:ys) = f x y : zipWith' f xs ys

{-|
λ> :l zipping.hs
[1 of 1] Compiling Zipping          ( zipping.hs, interpreted )
Ok, modules loaded: Zipping.
λ> zipWith' (+) [1, 2, 3] [10, 11, 12]
[11,13,15]
λ> zipWith (*) [1, 2, 3] [10, 11, 12]
[10,22,36]
λ> zipWith' (*) [1, 2, 3] [10, 11, 12]
[10,22,36]
λ> zipWith (==) ['a'..'f'] ['a'..'m']
[True,True,True,True,True,True]
λ> zipWith' (==) ['a'..'f'] ['a'..'m']
[True,True,True,True,True,True]
λ> zipWith max [10, 5, 34, 9] [6, 8, 12, 7]
[10,8,34,9]
λ> zipWith' max [10, 5, 34, 9] [6, 8, 12, 7]
[10,8,34,9]
-}

-- rewrite zip' in terms of the zipWith'
zip'' :: [a] -> [b] -> [(a, b)]
zip'' xs ys = zipWith' (\x y -> (x, y)) xs ys
{-
λ> zip [1,2] [3, 4]
[(1,3),(2,4)]
λ> zip'' [1,2] [3, 4]
[(1,3),(2,4)]
-}

