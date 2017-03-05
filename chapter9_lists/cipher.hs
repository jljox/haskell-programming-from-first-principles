module Cipher where

import Data.Char

caesar :: Int -> String -> String
caesar shift xs = map (\n -> chr (n + shift)) (map ord xs)

unCaesar :: Int -> String -> String
unCaesar shift xs = map (\n -> chr (n - shift)) (map ord xs)

{-
λ> unCaesar 10 $ caesar 10 "abc"
"abc"
-}
