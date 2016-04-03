module MakeAnonymous where

addOneIfOdd :: Integral a => a -> a
addOneIfOdd n = case odd n of
                  True -> f n
                  False -> n
                  where f n = n + 1


addOneIfOdd' :: Integral a => a -> a
addOneIfOdd' n = case odd n of
                  True -> f n
                  False -> n
                  where f = \n -> n + 1

addFive :: (Num a, Ord a) => a -> a -> a
addFive x y = (if x > y then y else x) + 5

addFive' :: (Num a, Ord a) => a -> a -> a
addFive' x y = (\w -> w + 5) z
  where z = if x > y then y else x

mflip :: (t1 -> t2 -> t) -> t2 -> t1 -> t
mflip f = \x -> \y -> f y x

mflip' :: (t1 -> t2 -> t) -> t2 -> t1 -> t
mflip' f x y = f y x
