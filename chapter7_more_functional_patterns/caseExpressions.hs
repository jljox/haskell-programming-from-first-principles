module CaseExpression where

awIf :: (Eq a, Num a) => a -> [Char]
awIf x = if x + 1 == 1 then "Awsome" else "oh no!"

awCase x =
  case x + 1 == 1 of
    True  -> "Awsome"
    False -> "not again!"

palindrome :: Eq a => [a] -> [Char]
palindrome xs =
  case xs == reverse xs of
    True  -> "yes"
    False -> "No"

palindrome' :: Eq a => [a] -> [Char]
palindrome' xs =
  case y of
    True  -> "Yes"
    False -> "No"
  where y = isPal xs

isPal :: Eq a => [a] -> Bool
isPal xs = xs == reverse xs
