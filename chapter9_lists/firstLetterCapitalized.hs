module FirstLetterCapitalized where

import Data.Char (toUpper)

firstLetterCapitalized :: [Char] -> Char
firstLetterCapitalized xs = toUpper $ head xs
{-
  λ> firstLetterCapitalized "bob"
'B'
-}

-- composed function version
firstLetterCapitalized' xs = (toUpper . head) xs
{-
λ> firstLetterCapitalized' "bob"
'B'
-}

-- composed function pointfree version
firstLetterCapitalized'' = toUpper . head
{-
λ> firstLetterCapitalized'' "bob"
'B'
-}
