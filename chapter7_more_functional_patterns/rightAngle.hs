module RightAngle where


isRigh :: (Eq a, Num a) => a -> a -> a -> [Char]
isRigh x y h
  | x^2 + y^2 == h^2 = "Right"
  | otherwise    = "not right"
