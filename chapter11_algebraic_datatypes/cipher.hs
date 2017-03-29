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

data ShiftDirection = ShiftLeft | ShiftRight
  deriving Eq
type ShitfAmount = Int
shifter :: ShiftDirection -> ShitfAmount -> String -> String
shifter direction shift xs
     | direction == ShiftLeft = map (\n -> chr (n - shift)) (map ord xs)
     | direction == ShiftRight = map (\n -> chr (n + shift)) (map ord xs)

{-
λ> shifter ShiftLeft 10 "abc"
"WXY"
λ> shifter ShiftRight 10 "abc"
"klm"

-}

caesar' :: Int -> String -> String
caesar' shift xs = shifter ShiftRight shift xs

unCaesar' :: Int -> String -> String
unCaesar' shift xs = shifter ShiftLeft shift xs
{-
λ> unCaesar' 10 $ caesar' 10 "abc"
"abc"
-}

