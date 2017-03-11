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

-- using if
myOr' :: [Bool] -> Bool
myOr' [] = False
myOr' (x:xs) =
  if  x == True
  then True
  else myOr' xs
{-
λ> myOr' []
False
λ> myOr' [True, undefined]
True
-}

-- direct recursion using (||)
myOr2 :: [Bool] -> Bool
myOr2 [] = True
myOr2 (x:xs) = x || myOr2 xs
{-
λ> myOr2 []
True
λ> myOr2 [False, True]
True
-}

-- fold not point-free in the folding function
myOr3 :: [Bool] -> Bool
myOr3 = foldr (\a acc -> if a == True then True else acc) False
{-
λ> myOr3 [False, True]
True
λ> myOr3 []
False
λ> myOr3 [False]
False
-}

-- fold point-free in the folding function and myor
myOr3' :: [Bool] -> Bool
myOr3' = foldr (||) False
{-
λ> myOr3' [False]
False
λ> myOr3' []
False
λ> myOr3' [True, undefined ]
True
-}
