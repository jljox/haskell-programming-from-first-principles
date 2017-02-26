module WordNumber where

import Data.List (intersperse)

-- not a total function
digitToWord :: Int -> String
digitToWord 0 = "zero"
digitToWord 1 = "one"
digitToWord 2 = "two"
digitToWord 3 = "three"
digitToWord 4 = "four"
digitToWord 5 = "five"
digitToWord 6 = "six"
digitToWord 7 = "seven"
digitToWord 8 = "eight"
digitToWord 9 = "nine"

digits :: Int -> [Int]
digits numbers = go numbers []
  where go n acc
         | n == 0      = acc
         | otherwise  = go (div n 10) ((mod n 10):acc)

wordNumber :: Int -> String
wordNumber n = concat . intersperse "-" $ map digitToWord $ digits n

{-|
λ> wordNumber 12324546
"one-two-three-two-four-five-four-six"
-}

