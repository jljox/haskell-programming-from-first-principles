module CapitalizedWords where

import Data.Char

capitalizedWords :: String -> [(String, String)]
capitalizedWords seq@(x:xs) = map (\w -> (w, uppperCaseFirstLetter w)) $ words seq where
  uppperCaseFirstLetter (x:xs) = toUpper x : xs

{-
[1 of 1] Compiling CapitalizedWords ( capitalizedWords.hs, interpreted )
Ok, modules loaded: CapitalizedWords.
λ> capitalizedWords "hello world"
[("hello","Hello"),("world","World")]
-}
