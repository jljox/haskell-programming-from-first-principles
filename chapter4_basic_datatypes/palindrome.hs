module Palindrome where

{-
Write a function that tells you whether or not a given String (or list)
is a palindrome. Here you’ll want to use a function called ’reverse,’ a
predefined function that does just what it sounds like.
-}

isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome x = x == reverse x
