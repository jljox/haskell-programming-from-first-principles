module Mynum where

myNum :: Integer
myNum = 1

myVal = myNum

myVal' :: t -> Integer
myVal' f = myNum

myNum' = 1 :: Integer
myVal'' :: Integer -> Integer
myVal'' f = f + myNum

stillAFunction :: [a] -> [a] -> [a] -> [a]
stillAFunction x y z = x ++ y ++ z
