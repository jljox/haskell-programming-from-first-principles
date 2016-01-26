module FixSyntax3 where

{-
When fixed, this function will return 1 from the value (1, 2)
f (a b) = A
-}

f :: (a, b) -> a
f x = fst x
