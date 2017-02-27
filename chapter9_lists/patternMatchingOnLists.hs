module PatternMatchingOnLists where

myTail :: [t] -> [t]
myTail [] = []
myTail (_:xs) = xs

safeTail :: [t] -> Maybe [t]
safeTail []     = Nothing
safeTail (x:[]) = Nothing
safeTail (x:xs) = Just xs
