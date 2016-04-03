module PatternMatchingTuples where

f :: (a, b) -> (c, d) -> ((b, d), (a, c))
f (a1, b1) (c1, d1) = ((b1, d1), (a1, c1))

f' :: (t, b) -> (t1, b1) -> ((b, b1), (t, t1))
f' x y = ((snd x, snd y), (fst x , fst y))
