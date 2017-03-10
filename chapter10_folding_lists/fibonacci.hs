module Fibonacci where

fibs :: [Integer]
fibs = 0 : scanl (+) 1 fibs

fibonacci :: Int -> Integer
fibonacci n = (!!) fibs n
