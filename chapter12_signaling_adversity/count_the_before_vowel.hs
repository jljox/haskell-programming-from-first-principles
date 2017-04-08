module CountTheBeforeVowel where

countTheBeforeVowel :: String -> Integer
countTheBeforeVowel xs = go (words xs) 0 where
  go [] acc = acc
  go ws acc = if "the" == head ws && startWithVowel (tail ws)
              then go (tail ws) (acc + 1)
              else go (tail ws) acc
{-
Ok, modules loaded: CountTheBeforeVowel.
λ> countTheBeforeVowel "the cow"
0
λ> countTheBeforeVowel "the evil cow"
1
-}

startWithVowel :: [String] -> Bool
startWithVowel ((x:xs):ws) = isVowel x

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
