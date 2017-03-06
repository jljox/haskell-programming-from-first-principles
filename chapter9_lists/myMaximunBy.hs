module MyMaximumBy where

myMaximumBy :: (a -> a -> Ordering) -> [a] -> a
myMaximumBy f (x:xs) = foldl (\a acc -> if f a acc == GT then a else acc) x xs

{-
λ> :r
[1 of 1] Compiling MyMaximumBy      ( myMaximunBy.hs, interpreted )
Ok, modules loaded: MyMaximumBy.
λ> myMaximumBy compare [1, 53, 9001, 10]
9001
-}

myMinimumBy :: (a -> a -> Ordering) -> [a] -> a
myMinimumBy f (x:xs) = foldl (\a acc -> if f a acc == LT then a else acc) x xs

{-
λ> :l myMaximunBy.hs
[1 of 1] Compiling MyMaximumBy      ( myMaximunBy.hs, interpreted )
Ok, modules loaded: MyMaximumBy.
λ> myMinimumBy  compare [1, 53, 9001, 10]
1
-}

myMaximum xs = myMaximumBy compare xs

{-
λ> :l myMaximunBy.hs
[1 of 1] Compiling MyMaximumBy      ( myMaximunBy.hs, interpreted )
Ok, modules loaded: MyMaximumBy.
λ> myMaximum [1..5]
5
-}

myMinimum xs = myMinimumBy compare xs

{-
λ> myMinimum [1..5]
1
-}

