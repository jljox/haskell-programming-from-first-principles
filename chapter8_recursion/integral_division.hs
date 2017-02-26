module IntegralDivision where

type Numerator = Integer
type Denominator = Integer
type Quotient = Integer

dividedBy :: Numerator -> Denominator -> Quotient
dividedBy = div

dividedBy' :: Integral a => a -> a -> (a, a)
dividedBy' numerator denominator = go numerator denominator 0
  where go n   d count
         | n < d      = (count, n)
         | otherwise  = go (n - d) d (count + 1)
