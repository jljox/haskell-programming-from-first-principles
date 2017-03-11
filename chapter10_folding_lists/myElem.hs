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

-- using folding
myElem2 :: (Foldable t, Eq a) => a -> t a -> Bool
myElem2 e xs = foldr (\a acc -> if e == a then True else acc) False xs

{-
λ> myElem2 1 [1..10]
True
λ> myElem2 1 [2..10]
False
λ> myElem2 1 []
False
-}

-- point-free version that uses any.
myElem3 :: (Foldable t, Eq a) => a -> t a -> Bool
myElem3 e = any (== e)
{-
λ> myElem3 1 []
False
λ> myElem3 1 [1..10]
True
λ> myElem3 1 [2..10]
False
-}
