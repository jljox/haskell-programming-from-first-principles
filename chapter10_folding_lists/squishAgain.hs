module SquishAgain where

-- flatterns a lis of lists into a list
squishAgain :: [[a]] -> [a]
squishAgain [] = []
squishAgain (x:xs) = x ++ squishAgain xs

{-
λ> squishAgain [""]
""
λ> squishAgain ["", "abc", "de"]
"abcde"
-}

squishMap :: Foldable t => (t1 -> [a]) -> t t1 -> [a]
squishMap f = foldr (\a acc -> f a ++ acc) []

-- flatterns a lis of lists into a list
-- resusing squishMap
squishAgain2 :: [[a]] -> [a]
squishAgain2 xs = squishMap id xs

{-
λ> squishAgain2 ["", "abc", "CD"]
"abcCD"
λ> squishAgain2 ["", "abc"]
"abc"
λ> squishAgain2 []
[]
-}

-- flatterns a lis of lists into a list
-- resusing squishMap. point-free version
squishAgain3 :: [[a]] -> [a]
squishAgain3 = squishMap id

{-
λ> squishAgain3 []
[]
λ> squishAgain3 ["", "abc"]
"abc"
λ> squishAgain3 ["", "abc", "123"]
"abc123"
-}
