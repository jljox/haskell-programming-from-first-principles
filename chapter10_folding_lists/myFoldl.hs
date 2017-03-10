module MyFoldl where

myFoldl :: (t -> t1 -> t) -> t -> [t1] -> t
myFoldl f acc []      = acc
myFoldl f acc (x:xs)  = myFoldl f (f acc x) xs

{-
λ> :r
[1 of 1] Compiling MyFoldl          ( myFoldl.hs, interpreted )
Ok, modules loaded: MyFoldl.
λ> myFoldl (+) 0 [1..3]
6

λ> myFoldl (+) 0 (1 : 2 : 3 : [])
6

λ> myFoldl (+) 0 $ 1 : 2 : 3 : []
6
-}
