module FilterOutUpperCase where

import Data.Char (isUpper)

-- write a function that filters all the uppercase letters out
noUpper :: String -> String
noUpper xs =  [x | x <- xs, (isUpper x) == False]

{-
λ> :l filterOutUpperCase.hs
[1 of 1] Compiling FilterOutUpperCase ( filterOutUpperCase.hs, interpreted )
Ok, modules loaded: FilterOutUpperCase.
λ> noUpper "Given the following behaviors"
"iven the following behaviors"
-}

-- Write that function such that, given the input “HbEfLrLxO,” your function will return “HELLO.”
justUpper :: String -> String
justUpper xs =  [x | x <- xs, isUpper x]

{-
λ> justUpper "HbEfLrLxO,"
"HELLO"
-}


