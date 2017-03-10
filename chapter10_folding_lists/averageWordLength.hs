module AverageWordLength where

avgWordLength :: String -> Int
avgWordLength w = div (sum (map length (words w))) (length (words w))

-- using fractinal division
avgWordLength' w = fromIntegral (sum (map length (words w))) / fromIntegral (length (words w))
