module Filter' where

filter' _ [] = []
filter' pred (x:xs)
  | pred x    = x : filter' pred xs
  | otherwise = filter' pred xs

{-|
λ> :l filter.hs
[1 of 1] Compiling Filter'          ( filter.hs, interpreted )
Ok, modules loaded: Filter'.
λ> filter' odd [1..10]
[1,3,5,7,9]

λ> filter' even [1..10]
[2,4,6,8,10]

λ> filter' (=='a') "this is a test"
"a"

λ> filter' (\x -> x `rem` 2 == 0) [1..20]
[2,4,6,8,10,12,14,16,18,20]

λ> filter' (\x -> elem x "aeiou") "abracadabra"
"aaaaa"

λ> [x | x <- "abracadadra", elem x "aeiou"]
"aaaaa"

-}

-- multiples of 3 out of a list from 1-30
{-|
λ> filter' (\x -> x `rem` 3 == 0) [1..30]
[3,6,9,12,15,18,21,24,27,30]
-}

{-|
Recalling what we learned about function composition, how could we compose the above function with the length function to tell us *how many* multiples of 3 there are between 1 and 30?

λ> let mulOf3Length xs = length . filter' (\x -> x `rem` 3 == 0) $ xs
λ> mulOf3Length [1..30]
10

Point free notation
λ> let mulOf3Length' = length . filter' (\x -> x `rem` 3 == 0)
λ> mulOf3Length' [1..30]
10
-}


{-|
we’re going to work on removing all articles (’the’, ’a’, and ’an’) from sentences. You want to get to something that works like this:
Prelude> myFilter "the brown dog was a goof"
["brown","dog","was","goof"]

λ> myFilter xs = filter ((\x -> x /="a" && x /="the" && x /="an")) $ words xs
λ> myFilter "the brown dog was a goof"
["brown","dog","was","goof"]
-}

