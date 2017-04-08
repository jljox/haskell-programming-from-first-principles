module ReplaceThe where

notThe :: String -> Maybe String
notThe xs
  | xs == "the"   = Nothing
  | otherwise    = Just xs

replaceThe :: String -> String
replaceThe xs = unwords $ fmap extract $ fmap notThe $ words xs
{-
λ> replaceThe "the cow loves us"
"a cow loves us"
-}

extract :: Maybe String -> String
extract Nothing = "a"
extract (Just xs) = xs
