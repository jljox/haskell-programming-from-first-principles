module Mac91 where

mc :: (Ord b, Num b) => b -> b
mc n
 | n > 100    = n - 10
 | otherwise  = mc . mc $ n + 11

mc91 :: (Ord b, Num b) => [b] -> [b]
mc91 list = map mc list

