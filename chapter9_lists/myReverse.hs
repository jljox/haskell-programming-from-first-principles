module MyReverse where

myReverse :: [a] -> [a]
myReverse xs = foldl (\acc a -> a:acc) [] xs

{-
λ> :l myReverse.hs
[1 of 1] Compiling MyReverse        ( myReverse.hs, interpreted )
Ok, modules loaded: MyReverse.
λ> myReverse "blah"
"halb"
λ> myReverse [1..5]
[5,4,3,2,1]
-}

-- using recursion
myReverse' :: [a] -> [a]
myReverse' []  = []
myReverse' (x:xs) = myReverse' xs ++ [x]

{-
λ> myReverse' "blah"
"halb"
λ> myReverse' [1..5]
[5,4,3,2,1]
-}
