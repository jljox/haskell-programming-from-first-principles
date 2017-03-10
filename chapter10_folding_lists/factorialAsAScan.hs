module FactorialAsAScan where

factorials :: (Num b, Enum b) => b -> [b]
factorials n = scanl (*) 1 [1..n]

-- factorial of number n such that n >= 0
factorial :: Int -> Int
factorial n = (!!) (factorials n) n

{-
λ> factorial 1
1
λ> factorial 2
2
λ> factorial 3
6
λ> factorial 5
120
-}

