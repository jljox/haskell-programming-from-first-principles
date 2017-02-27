module UsingRangesToConstructLists where

eftBool :: Bool -> Bool -> [Bool]
eftBool x y = enumFromTo x y

-- eftOrd :: Ordering -> Ordering -> [Ordering]
-- eftOrd x y = enumFromTo x y

eftInt :: Int -> Int -> [Int]
eftInt x y = enumFromTo x y

eftChar :: Char -> Char -> [Char]
eftChar x y = enumFromTo x y
