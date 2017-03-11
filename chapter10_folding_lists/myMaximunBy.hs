module MyMaximumBy where

-- takes a comparason function and a list and returns the greatest element of
-- the list based on the last value the comparison returned GT for.

-- using foldl
myMaximumBy :: (a -> a -> Ordering) -> [a] -> a
myMaximumBy f (x:xs) = foldl (\a acc -> if f a acc == GT then a else acc) x xs

{-
λ> :l myMaximunBy.hs
[1 of 1] Compiling MyMaximumBy      ( myMaximunBy.hs, interpreted )
Ok, modules loaded: MyMaximumBy.
λ> myMaximumBy (\_ _ -> GT) [1..10]
1
λ> myMaximumBy (\_ _ -> LT) [1..10]
10
λ> myMaximumBy compare [1..10]
10
λ> myMaximumBy compare [1, 53, 9001, 10]
9001
-}
