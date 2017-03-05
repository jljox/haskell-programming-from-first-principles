module MyOr where

-- myOr returns True if any Bool in the list is True.
myOr :: [Bool] -> Bool
myOr [] = False
myOr (x:xs)
  | x = True
  | otherwise = myOr xs

{-
λ> myOr []
False
λ> myOr [False, True]
True
-}
