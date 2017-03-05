module CapitalizeFirstLetterOfString where

import Data.Char (toUpper)

capitalizeFirstLetter :: String -> String
capitalizeFirstLetter [] = []
capitalizeFirstLetter (x:xs) = toUpper x : xs

{-
λ> :l capitalizeFirstLetterOfString.hs
[1 of 1] Compiling CapitalizeFirstLetterOfString ( capitalizeFirstLetterOfString.hs, interpreted )
Ok, modules loaded: CapitalizeFirstLetterOfString.
λ> capitalizeFirstLetter "julie"
"Julie"
-}
