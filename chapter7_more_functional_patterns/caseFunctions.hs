module CaseFunctions where

-- 1.
functionC :: Ord a => a -> a -> a
functionC x y = if (x > y) then x else y

functionC' :: Ord a => a -> a -> a
functionC' x y = case x > y of
                   True  -> x
                   False -> y

-- 2.
ifEvenAdd2 :: Integral a => a -> a
ifEvenAdd2 n = if even n then n + 2 else n

ifEvenAdd2' :: Integral a => a -> a
ifEvenAdd2' x = case even x of
                  True  -> x + 2
                  False -> x

-- 3
nums :: (Num a, Num a1, Ord a) => a -> a1
nums x =
  case compare x 0 of
    LT -> -1
    EQ -> 0
    GT -> 1
