module TupleFunctions where

addEmUp2 :: Num a => (a, a) -> a
addEmUp2 (x, y) = x + y

addEmUp2' :: Num a => (a, a) -> a
addEmUp2' tup = fst tup + snd tup

fst3 :: (t, t1, t2) -> t
fst3 (x, _, _) = x

third3 :: (t, t1, t2) -> t2
third3 (_, _, x) = x
