module IterateAndUnfoldr where

-- Question 1
myIterate :: (a -> a) -> a -> [a]
myIterate f x = x : myIterate f (f x)
{-
Ok, modules loaded: IterateAndUnfoldr.
λ> take 10 $ iterate (+1) 0
[0,1,2,3,4,5,6,7,8,9]
λ> take 10 $ myIterate (+1) 0
[0,1,2,3,4,5,6,7,8,9]
-}

-- Question 2
myUnfoldr :: (b -> Maybe (a, b)) -> b -> [a]
myUnfoldr f seed = (extract $ f seed)  where
  extract Nothing       = []
  extract (Just (a, new_seed)) = a : (extract $ f new_seed)
{-
λ> :r
[1 of 1] Compiling IterateAndUnfoldr ( own_iterate_and_unfoldr.hs, interpreted )
Ok, modules loaded: IterateAndUnfoldr.
λ> take 10 $ myUnfoldr (\b -> Just (b, b +1)) 0
[0,1,2,3,4,5,6,7,8,9]

Prelude> take 10 $ unfoldr (\b -> Just (b, b+1)) 0
 [0,1,2,3,4,5,6,7,8,9]
-}

-- Question 3
betterIterate :: (a -> a) -> a -> [a]
betterIterate f x = myUnfoldr (\x -> Just (x, f x)) x
{-
λ> take 10 $ myIterate (+1) 0
[0,1,2,3,4,5,6,7,8,9]
λ> take 10 $ betterIterate  (+1) 0
[0,1,2,3,4,5,6,7,8,9]
-}
