module BooldNa where

bloodNa :: (Num a, Ord a) => a -> [Char]
bloodNa x
  | x < 135   = "too low"
  | x > 145   = "too high"
  | otherwise = "just right"
