module MyElem where

-- After you write the recursive myElem, write another version that uses any.

myElem :: Eq a => a -> [a] -> Bool
myElem _ [] = False
myElem e (x:xs)
    | e == x      = True
    | otherwise   = myElem e xs

{-
λ> myElem 1 [1..10]
True
λ> myElem 1 [2..10]
False
-}

-- version that uses any.
myElem' :: Eq a => a -> [a] -> Bool
myElem' e xs = any (== e) xs

{-
λ> myElem' 1 [1..10]
True
λ> myElem' 1 [2..10]
False
-}

