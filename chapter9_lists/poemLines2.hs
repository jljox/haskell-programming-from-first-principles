module PoemLines2 where

-- paramerized token separator

firstSen = "Tyger Tyger, burning bright\n"
secondSen = "In the forests of the night\n"
thirdSen = "What immortal hand or eye\n"
fourthSen = "Could frame thy fearful symmetry?"
sentences = firstSen ++ secondSen ++ thirdSen ++ fourthSen

-- putStrLn sentences -- should print
-- Tyger Tyger, burning bright
-- In the forests of the night
-- What immortal hand or eye
-- Could frame thy fearful symmetry?
-- Implement this
myLines :: Char -> String -> [String]
myLines sep input = drop 1 $ reverse $ splitter sep input [[]]

firstWord :: Char -> [Char] -> [Char]
firstWord sep xs = takeWhile (/=sep) xs

restOfSentence :: Char -> [Char] -> [Char]
restOfSentence sep xs = dropWhile (==sep) $ dropWhile (/=sep) xs

splitter :: Char -> String -> [String] -> [String]
splitter _ [] acc = acc
splitter sep xs acc = splitter sep (restOfSentence sep xs) ((firstWord sep xs) : acc)

-- What we want 'myLines sentences' to equal
shouldEqual =
  [ "Tyger Tyger, burning bright"
  , "In the forests of the night"
  , "What immortal hand or eye"
  , "Could frame thy fearful symmetry?"
  ]

-- The main function here is a small test -- to ensure you've written your function -- correctly.
main :: IO ()
main =
  print $ "Are they equal? " ++ show (myLines '\n' sentences == shouldEqual)
