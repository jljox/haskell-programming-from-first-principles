module DeriveImplementationFromType where

-- 1. derive an implementation for the below function
chk :: Eq b => (a -> b) -> a -> (b -> Bool)
chk w _ = (==)(f w) where
  f x = f x -- apply f to x :: a gives type y :: b

-- 2. derive an implementation for the below function
-- arith :: Num b => (a -> b) -> Integer -> a -> b
-- a :: ???
-- b :: Num
-- c :: Integer, instance Num Integer
arith :: Num b => (a -> b) -> Integer -> (a -> b)
arith f _ = f
