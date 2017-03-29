module VigenereCipher where

import Data.Char

caesarCode :: Int -> String -> String
caesarCode shiftAmount xs = map (\n -> chr (n + shiftAmount)) (map ord xs)

newtype KeyWord = KeyWord String
  deriving (Eq, Show)

type PlainText = String

type CipherText = String

type KeywordText = String

vigenereCode :: KeyWord -> PlainText -> CipherText
vigenereCode keyWord plainText = unwords $ split cipherTextNoSpace plainTextWordLengths where
  cipherTextNoSpace = concat $ zipWith caesarCode (shifts $ keywordsNoSpace keyWord plainText) (words1 $ concat $ words plainText)
  plainTextWordLengths = wordsLength plainText
{-
λ> vigenereCode (KeyWord "ALLY") "MEET AT DAWN"
"MPPl A_ OYWY"
-}

vigenereDecode :: KeyWord -> CipherText -> PlainText
vigenereDecode keyWord xs = unwords $ split xsNoSpace xsWordLengths where
  xsNoSpace = concat $ zipWith caesarCode (map (*(-1)) $ shifts $ keywordsNoSpace keyWord xs) (words1 $ concat $ words xs)
  xsWordLengths = wordsLength xs
{-
λ> vigenereDecode (KeyWord "ALLY") "MPPl A_ OYWY"
"MEET AT DAWN"
-}

keywordsNoSpace :: KeyWord -> PlainText -> KeywordText
keywordsNoSpace (KeyWord kw) plainText = take (length plainTextNoSpace) $ cycle kw where
  plainTextNoSpace = concat $ words plainText
{-
NOT a total function. Needs to deal with empty kw
λ> keywordsNoSpace (KeyWord "ALLY") "MEET AT DAWN"
"ALLYALLYAL"
-}

shift :: Char -> Int
shift x = ord x - ord 'A'

shifts :: String -> [Int]
shifts xs = map shift $ concat $ words xs
{-
λ> shifts $  keywordsNoSpace (KeyWord "ALLY") "MEET AT DAWN"
[0,11,11,24,0,11,11,24,0,11]
-}

words1 :: String -> [String]
words1 = foldr (\a acc -> [a] : acc) []
{-
λ> words1 "abc"
["a","b","c"]
-}

wordsLength :: String -> [Int]
wordsLength xs = map length $ words xs
{-
λ> wordsLength "meet at dawn"
[4,2,4]
-}

split :: String -> [Int] -> [String]
split xs ls = go xs ls [] where
  go [] _       acc  = acc
  go xs (l:ls)  acc  = go (drop l xs) ls $ acc ++ [(take l xs)]
{-
λ> split "MEETATDAWN" [4,2,4]
["MEET","AT","DAWN"]
-}
