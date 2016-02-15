module DivideThenAdd where

divideThenAdd :: Fractional a => a -> a -> a
divideThenAdd x y = (x / y) + 1

{-
divideThenAdd' :: Num a => a -> a -> a
divideThenAdd' x y = (x / y) + 1

as (/) is not defined in Num

-}

subtractThenAdd :: Num a => a -> a -> a
subtractThenAdd x y = (x - y) + 1
