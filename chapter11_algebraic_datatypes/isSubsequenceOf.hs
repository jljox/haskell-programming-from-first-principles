module IsSubsequenceOf where

isSubsequenceOf :: (Eq a) => [a] -> [a] -> Bool
isSubsequenceOf [] _ = True
isSubsequenceOf _ [] = True
isSubsequenceOf (x:xs) seq@(_:ys) = elem x seq && isSubsequenceOf xs seq

{-
λ> :r
[1 of 1] Compiling IsSubsequenceOf  ( isSubsequenceOf.hs, interpreted )
Ok, modules loaded: IsSubsequenceOf.
λ> isSubsequenceOf "blah" "blahwoot"
True
λ> isSubsequenceOf "blah" "wootblah"
True
λ> isSubsequenceOf "blah" "wboloath"
True
λ> isSubsequenceOf "blah" "wootbla"
False
-}
