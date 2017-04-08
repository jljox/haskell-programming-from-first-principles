module SimpleLibraryForMaybe where

isJust :: Maybe a -> Bool
isJust Nothing  = False
isJust _        = True

{-
λ> isJust $ Just False
True
λ> isJust Nothing
False
λ> isJust $ Just 1
True
-}

isNothing :: Maybe a -> Bool
isNothing = not . isJust

{-
λ> isNothing Nothing
True
λ> isNothing $ Just 2
False
-}

mayybee :: b -> (a -> b) -> Maybe a -> b
mayybee z f Nothing = z
mayybee z f (Just x) = f x

{-
[1 of 1] Compiling SimpleLibraryForMaybe ( simple_library_for_maybe.hs, interpreted )
Ok, modules loaded: SimpleLibraryForMaybe.
λ> mayybee 0 (+1) Nothing
0
λ> mayybee 0 (+1) (Just 1)
2
-}

fromMaybe :: a -> Maybe a -> a
fromMaybe a ma = mayybee a id ma
{-
λ> fromMaybe 0 Nothing
0
λ> fromMaybe 0 (Just 1)
1
-}

listToMaybe :: [a] -> Maybe a
listToMaybe [] = Nothing
listToMaybe (x:xs) = Just x
{-
λ> listToMaybe [1, 2, 3]
Just 1
λ> listToMaybe []
Nothing
-}

maybeToList :: Maybe a -> [a]
maybeToList Nothing   = []
maybeToList (Just x)  = [x]
{-
[1 of 1] Compiling SimpleLibraryForMaybe ( simple_library_for_maybe.hs, interpreted )
Ok, modules loaded: SimpleLibraryForMaybe.
λ> maybeToList (Just 1)
[1]
λ> maybeToList Nothing
[]
-}

catMaybes :: [Maybe a] -> [a]
catMaybes [] = []
catMaybes ((Just x) : xs) = x : catMaybes xs
catMaybes (Nothing : xs) = catMaybes xs
{-
[1 of 1] Compiling SimpleLibraryForMaybe ( simple_library_for_maybe.hs, interpreted )
Ok, modules loaded: SimpleLibraryForMaybe.
λ> catMaybes [Nothing, Nothing]
[]
λ> catMaybes [Just 1, Nothing, Just 2]
[1,2]
λ> catMaybes [Nothing, Nothing, Nothing]
[]
-}


