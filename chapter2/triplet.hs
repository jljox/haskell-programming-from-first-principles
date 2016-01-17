triplet :: Num a => a -> a
triplet x = x * 3
--[1] [2][3] [4]

triplet' :: Num a => a -> a
triplet' = (*3)

triplet'' :: Num a => a -> a
triplet'' = (3*)
