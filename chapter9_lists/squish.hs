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
