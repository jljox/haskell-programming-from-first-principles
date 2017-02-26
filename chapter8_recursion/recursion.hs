module Recursion where


{-|
reducing dividedBy 15 2

dividedBy 15 2 =
go 15 2 0
  | 15 < 2 =
    False
  | otherwise = go (15-2) 2 (0 + 1)

go 13 2 1
  | 13 < 2 =
    False
  | otherwise = go (13-2) 2 (1 + 1)

go 11 2 2
  | 11 < 2 =
    False
  | otherwise = go (11-2) 2 (2 + 1)

go 9 2 3
  | 9 < 2 =
    False
  | otherwise = go (9-2) 2 (3 + 1)

go 7 2 4
  | 7 < 2 =
    False
  | otherwise = go (7-2) 2 (4 + 1)

go 5 2 5
  | 5 < 2 =
    False
  | otherwise = go (5-2) 2 (5 + 1)

go 3 2 6
  | 3 < 2 =
    False
  | otherwise = go (3-2) 2 (6 + 1)

go 1 2 7
  | 1 < 2 = (7, 1)
    True
-}

sumFromOneTo :: (Num b, Enum b) => b -> b
sumFromOneTo n = foldl (+) 0 [1..n]

sumFromOneTo' :: (Ord t, Num t) => t -> t
sumFromOneTo' limit = go limit 0 0
  where go n count acc
         | count > n  = acc
         | otherwise   = go n (count+1) (acc+count)

multipyBy number by = go number by 0 0
  where go num mult count acc
         | count >= mult = acc
         | otherwise    = go num mult (count+1) (acc+num)


type Numerator = Integer
type Denominator = Integer
type Quotient = Integer
data DividedResult = Result Integer | DividedByZero deriving Show

dividedBy :: Numerator -> Denominator -> DividedResult
dividedBy numerator 0 = DividedByZero
dividedBy numerator denominator = Result $ div numerator denominator
