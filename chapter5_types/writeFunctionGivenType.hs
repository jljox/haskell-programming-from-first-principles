module WriteFunctionGivenType where

-- 1) there is only one implementation the typechecks
i :: a -> a
i x = x

-- 2) there is only one version that works
c :: a -> b -> a
c x y = x

-- 3) given alpha equivalence c'' and c above are the same
c'' :: b -> a -> b
c'' x y = x

-- 4) only one version that works
c' :: a -> b -> b
c' x y = y


-- 5) multiple implementations

-- identity
r :: [a] -> [a]
r xs = xs

-- empty list
r' :: [a] -> [a]
r' _ = []

-- reverse the list
r'' :: [a] -> [a]
r'' [] = []
r'' (x:xs) = r'' xs ++ [x]

-- 6) only one version will typecheck. Function composition.
co :: (b -> c) -> (a -> b) -> (a -> c)
co  = (.)

-- 7) only one version will typecheck.
a :: (a -> c) -> a -> a
a _ x = x

-- 8) only one version will typecheck.
a' :: (a -> b) -> a -> b
-- a' :: (a -> b) -> (a -> b)
a' f = f


