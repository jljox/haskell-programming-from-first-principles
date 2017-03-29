module CapitalizeWord where

import Data.Char

capitalizeWord :: String -> String
capitalizeWord (x:xs) = toUpper x : xs

{-
λ> :l capitalizeWord.hs
[1 of 1] Compiling CapitalizeWord   ( capitalizeWord.hs, interpreted )
Ok, modules loaded: CapitalizeWord.
λ> capitalizeWord "Titter"
"Titter"
λ> capitalizeWord "titter"
"Titter"
-}
