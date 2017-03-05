module MyToUpper where

import Data.Char (toUpper)

myToUpper :: String -> String
myToUpper [] = []
myToUpper (x:xs) = toUpper x : myToUpper xs

{-
λ> :l myToUpper.hs
[1 of 1] Compiling MyToUpper        ( myToUpper.hs, interpreted )
Ok, modules loaded: MyToUpper.
λ> myToUpper "woot"
"WOOT"
-}
