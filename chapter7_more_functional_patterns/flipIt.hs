module FlipIt where

flip' :: (t1 -> t2 -> t) -> t2 -> t1 -> t
flip' f x y = f y x

flip'' :: (t1 -> t2 -> t) -> t2 -> t1 -> t
flip'' f = \x y -> f y x
