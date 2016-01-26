module ABS where

{-
Write a function to return the absolute value of a number using if-
then-else
-}

myAbs :: Integer -> Integer
myAbs x = if x >= 0 then x else negate x
