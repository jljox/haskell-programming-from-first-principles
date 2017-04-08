module CountVowels where

countVowels :: String -> Integer
countVowels xs = foldr (\a acc -> if a then (acc + 1) else acc) 0 $ map isVowel xs

{-
λ> :l count_vowels.hs
[1 of 1] Compiling CountVowels      ( count_vowels.hs, interpreted )
Ok, modules loaded: CountVowels.
λ> countVowels "the cow"
2
λ> countVowels "Mikolajczak"
4
-}

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
