module ExtractingPortionsOfList where

{-|
1.

using takeWhile and dropWhile, function that takes a string and returns a list
of string, using spaces to separate the elements of the string into words.
eg.
*Main> myWords "all i wanna do is have some fun"
     ["all","i","wanna","do","is","have","some","fun"]
-}

myWords :: String -> [String]
myWords input = drop 1 $ reverse $ splitter input [[]]

firstWord :: [Char] -> [Char]
firstWord xs = takeWhile (/=' ') xs

restOfSentence :: [Char] -> [Char]
restOfSentence xs = dropWhile (==' ') $ dropWhile (/=' ') xs

splitter :: String -> [String] -> [String]
splitter [] acc = acc
splitter xs acc = splitter (restOfSentence xs) ((firstWord xs) : acc)
