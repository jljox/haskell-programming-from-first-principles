module Fibonacci where

fibonacci :: Integer -> Integer
{-|
or fibonacci :: Integral a => a -> a
-}

fibonacci 0 = 0
fibonacci 1 = 1
fibonacci n = fibonacci (n - 1) + fibonacci (n - 2)

-- infinite list of fibonacci numbers
{-| should be in do block like in ghci
fibs = 0 : 1 : [ x <- x zipWith (+) (tail fibs) fibs]
-}
