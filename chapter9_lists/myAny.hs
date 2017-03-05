module MyAny where

myAny :: (a -> Bool) -> [a] -> Bool
myAny _ [] = False
myAny p (x:xs)
  | p x       = True
  | otherwise = myAny p xs

{-
[1 of 1] Compiling MyAny            ( myAny.hs, interpreted )
Ok, modules loaded: MyAny.
λ> myAny even [1, 3, 5]
False
λ> myAny odd [1, 3, 5]
True
-}
