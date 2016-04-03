module MyABS where

myAbs :: (Num a, Ord a) => a -> a
myAbs x
  | x < 0     = (-x)
  | otherwise = x
