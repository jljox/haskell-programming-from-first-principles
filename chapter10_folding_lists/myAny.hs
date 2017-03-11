module MyAny where

-- returns True if a -> Bool applied to any of the values in the list returns True
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

-- direct recursion using (||)
myAny2 :: (a -> Bool) -> [a] -> Bool
myAny2 _ [] = False
myAny2 p (x:xs) = p x || myAny2 p xs

{-
λ> myAny2 even [1, 2, 3]
True
λ> myAny2 even [1, 3]
False
λ> myAny2 odd [1, 3]
True
λ> myAny2 odd []
False
-}

-- fold, not point-free in the folding function
myAny3 :: (a -> Bool) -> [a] -> Bool
myAny3 p = foldr (\a acc -> if p a then True else acc) False

{-
λ> :r
[1 of 1] Compiling MyAny            ( myAny.hs, interpreted )
Ok, modules loaded: MyAny.
λ> myAny3 even []
False
λ> myAny3 even [2]
True
λ> myAny3 even [1]
False
λ> myAny3 even [1 , 2]
True
-}

-- fold, not point-free in the folding function
myAny4 :: (a -> Bool) -> [a] -> Bool
myAny4 p = foldr ((||) . p)  False
{-
λ> myAny4 even []
False
λ> myAny4 even [1]
False
λ> myAny4 even [1, 2]
True
λ> myAny4 even [2, 1]
True
λ> myAny4 even [1, 1]
False
-}
