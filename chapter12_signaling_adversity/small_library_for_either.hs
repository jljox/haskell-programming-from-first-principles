module SamllLibraryForEither where

lefts' :: [Either a b] -> [a]
lefts' [] = []
lefts' ((Left a) : xs) = a : lefts' xs
lefts' ( _ : xs) = lefts' xs
{-
Ok, modules loaded: SamllLibraryForEither.
λ> lefts' [Left 1, Right 2, Left 3]
[1,3]
-}

leftfr :: [Either a b] -> [a]
leftfr = foldr f [] where
  f (Left a) acc = a : acc
  f _ acc = acc
{-
λ> :r
[1 of 1] Compiling SamllLibraryForEither ( small_library_for_either.hs, interpreted )
Ok, modules loaded: SamllLibraryForEither.
λ> lefts' [Left 1, Right 2, Left 3]
[1,3]
λ> leftfr [Left 1, Right 2, Left 3]
[1,3]
-}

right' :: [Either a b] -> [b]
right' [] = []
right' ((Right a) : xs) = a : right' xs
right' (_ : xs) = right' xs
{-
λ> right' [Left 1, Right 2, Left 3, Right 4]
[2,4]
-}

rightfr :: [Either a b] -> [b]
rightfr = foldr f [] where
  f (Right a) acc = a : acc
  f _ acc = acc
{-
λ> :l small_library_for_either.hs
[1 of 1] Compiling SamllLibraryForEither ( small_library_for_either.hs, interpreted )
Ok, modules loaded: SamllLibraryForEither.
λ> right' [Left 1, Right 2, Left 3, Right 4]
[2,4]
λ> rightfr [Left 1, Right 2, Left 3, Right 4]
[2,4]
-}

partitionEithers' :: [Either a b] -> ([a], [b])
partitionEithers' xs = (leftfr xs, rightfr xs)
{-
Ok, modules loaded: SamllLibraryForEither.
λ> partitionEithers' [Left 1, Right 2, Left 3, Right 4]
([1,3],[2,4])
-}

eitherMaybe' :: (b -> c) -> Either a b -> Maybe c
eitherMaybe' f (Right b) = Just $ f b
eitherMaybe' _ (Left _) = Nothing
{-
Ok, modules loaded: SamllLibraryForEither.
λ> eitherMaybe' (+1) (Right 1)
Just 2
λ> eitherMaybe' (+1) (Left 0)
Nothing
-}

-- general catamorphism for Either values
either' :: (a -> c) -> (b -> c) -> Either a b -> c
either' aToc _ (Left a) = aToc a
either' _ bToc (Right b) = bToc b
{-
Ok, modules loaded: SamllLibraryForEither.
λ> either' (+1) (*2) (Left 3)
4
λ> either' (+1) (*2) (Right 5)
10
-}

eitherMaybe'' :: (b -> c) -> Either a b -> Maybe c
eitherMaybe'' bToc (Right b) = Just $ either' id bToc (Right b)
eitherMaybe'' bToc (Left _) = Nothing
{-
Ok, modules loaded: SamllLibraryForEither.
λ> eitherMaybe'' (+1) (Right 1)
Just 2
λ> eitherMaybe'' (+1) (Left 1)
Nothing
-}


