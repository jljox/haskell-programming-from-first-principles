module MyMinimumBy where

-- takes a comparason function and a list and returns the leat element of
-- the list based on the last value the comparison returned LT for.

-- using foldl
myMinimumBy :: (a -> a -> Ordering) -> [a] -> a
myMinimumBy f (x:xs) = foldl (\a acc -> if f a acc == LT then a else acc) x xs

{-
λ> :l myMinimunBy.hs
[1 of 1] Compiling MyMinimumBy      ( myMinimunBy.hs, interpreted )
Ok, modules loaded: MyMinimumBy.
λ> myMinimumBy (\_ _ -> GT) [1..10]
10
λ> myMinimumBy (\_ _ -> LT) [1..10]
1
λ> myMinimumBy compare [1..10]
1
-}
