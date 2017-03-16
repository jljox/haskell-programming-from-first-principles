{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE FlexibleInstances #-}

module TooMany where

class TooMany a where
  tooMany :: a -> Bool

instance TooMany Int where
  tooMany n = n > 42

newtype Goats = Goats Int deriving (Eq, Show, TooMany)

{-
λ> tooMany $ Goats 42
False
λ> tooMany $ Goats 43
True
λ> tooMany (42 :: Int)
False
-}

instance TooMany (Int, String) where
  tooMany (n, xs) = n > 42 && length xs > 1

{-
λ> tooMany ((43, "abc") :: (Int, String))
True
-}

instance TooMany (Int, Int) where
  tooMany (x, y) = x + y > 42

{-
λ> tooMany ((40, 2) :: (Int, Int))
False
λ> tooMany ((40, 3) :: (Int, Int))
True
-}
