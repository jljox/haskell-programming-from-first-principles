module SumProductConcat where

import Data.List

mehSum :: Num t => [t] -> t
mehSum xs = go 0 xs where
  go n [] = n
  go n (x:xs) = go (n + x) xs

niceSum :: (Foldable t, Num b) => t b -> b
niceSum xs = foldl' (+) 0 xs

mehProduct :: Num t => [t] -> t
mehProduct xs = go 1 xs where
  go n [] = n
  go n (x:xs) = go (n * x) xs

niceProduct :: (Foldable t, Num b) => t b -> b
niceProduct xs = foldl' (*) 1 xs

niceConcat :: [[a]] -> [a]
niceConcat xs = foldr (++) [] xs
{-
λ> niceConcat ["hello", " ", "wordl"]
"hello wordl"
-}
