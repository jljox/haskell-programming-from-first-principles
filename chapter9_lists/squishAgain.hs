module SquishAgain where

squishAgain :: [[a]] -> [a]
squishAgain [] = []
squishAgain (x:xs) = x ++ squishAgain xs

{-
λ> squishAgain [""]
""
λ> squishAgain ["", "abc", "de"]
"abcde"
-}
