module ValidateTheWord where

countVowels :: String -> Integer
countVowels xs = foldr (\a acc -> if a then (acc + 1) else acc) 0 $ map isVowel xs

countConsonants :: String -> Integer
countConsonants xs = foldr (\a acc -> if a then (acc + 1) else acc) 0 $ map isConsonant xs


isConsonant :: Char -> Bool
isConsonant = not . isVowel

isVowel :: Char -> Bool
isVowel x
  | x == 'a' = True
  | x == 'e' = True
  | x == 'i' = True
  | x == 'o' = True
  | x == 'u' = True
  | x == 'A' = True
  | x == 'E' = True
  | x == 'I' = True
  | x == 'O' = True
  | x == 'U' = True
  | otherwise  = False

newtype Word' = Word' String
  deriving (Eq, Show)

mkWord :: String -> Maybe Word'
mkWord xs
  | (countVowels xs) > (countConsonants xs) = Nothing
  | otherwise = Just $ Word' xs

{-
λ> mkWord "Mikolajczak"
Just (Word' "Mikolajczak")
λ> mkWord "Mikolajczakaaaaaaaa"
Nothing
-}
