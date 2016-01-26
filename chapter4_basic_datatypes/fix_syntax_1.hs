module FixSyntax1 where

{-
1. Here, we want a function that adds 1 to the length of a string argument
and returns that result.

x = (+)
F xs = w 'x' 1
where w = length xs
-}

f :: String -> Int
f xs = w + 1
  where w = length xs
