module MyAnd where

-- direct recursion
myAnd :: [Bool] -> Bool
myAnd [] = True
myAnd (x:xs) =
  if x == False
  then False
  else myAnd xs

{-
λ> myAnd []
True
λ> myAnd [True]
True
λ> myAnd [False]
False
λ> myAnd [False, undefined]
False
-}

-- direct recursion using (&&)
myAnd' :: [Bool] -> Bool
myAnd' []     = True
myAnd' (x:xs) = x && myAnd' xs

{-
λ> myAnd' [False, undefined]
False
-}

-- using foldr non point free in the folding function
myAnd'' :: Foldable t => t Bool -> Bool
myAnd'' xs = foldr (\a acc ->
  if a == False
  then False
  else acc) True xs

-- using foldr point free in the folding function
myAnd''' :: Foldable t => t Bool -> Bool
myAnd''' xs = foldr (&&) True xs
{-
λ> myAnd''' [False, undefined]
False
-}

-- using foldr point free in the folding function and the myAnd
myAnd'''' :: [Bool] -> Bool
myAnd'''' = foldr (&&) True

{-
λ> myAnd'''' []
True
λ> myAnd'''' [False, undefined]
False
λ> myAnd'''' [True]
True
-}
