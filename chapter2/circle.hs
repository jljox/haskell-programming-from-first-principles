area :: Fractional a => a -> a
area x = 3.14 * x * x

area' :: Fractional a => a -> a
area' x = 3.14 * square x

square :: Num a => a -> a
square x = x * x
