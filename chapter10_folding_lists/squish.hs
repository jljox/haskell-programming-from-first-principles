module Squish where

squish :: [[a]] -> [a]
squish [] = []
squish (x:xs) = x ++ squish xs

{-
λ> :l squish.hs
[1 of 1] Compiling Squish           ( squish.hs, interpreted )
Ok, modules loaded: Squish.
λ> squish ["abc", "de"]
"abcde"
-}

-- using fold
squish2 :: Foldable t => t [a] -> [a]
squish2 xs = foldr (\a acc -> a ++ acc) [] xs

{-
λ> squish2 ["", "abc"]
"abc"
λ> squish2 ["2", "abc"]
"2abc"
λ> squish2 []
[]
-}

-- using fold point-free
squish3 :: Foldable t => t [a] -> [a]
squish3 = foldr (\a acc -> a ++ acc) []

{-
λ> squish3 []
[]
λ> squish3 ["3", "abc"]
"3abc"
λ> squish3 ["", "abc"]
"abc"
-}
