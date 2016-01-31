module MakeTypesFit where

{-
The focus here is on manipulating terms in order to get the types to  t. This sort of exercise is something you’ll encounter in writing real Haskell code, so the practice will make it easier to deal with when you get there. Practicing this will make you better at writing ordinary code as well.
We provide the types and bottomed out (declared as “unde ned”) terms. Bottom and undefined will be explained in more detail later. The contents of the terms are irrelevant here. You’ll use only the declarations provided and what the Prelude provides by default unless otherwise speci ed. Your goal is to make the ???’d declaration pass the typechecker by modifying it alone.
-}

-- 1.
f :: Int -> String
f = undefined

g :: String -> Char
g = undefined

h :: Int -> Char
-- h = ???
h = g . f

-- 2
data A
data B
data C

q :: A -> B
q = undefined

w :: B -> C
w = undefined

e :: A -> C
--e = ???
e = w . q

-- 3
data X
data Y
data Z

xz :: X -> Z
xz = undefined

yz :: Y -> Z
yz = undefined

xForm :: (X, Y) -> (Z, Z)
--xForm = ???
xForm (x, y) = (xz x, yz y)

-- 4
data W
--munge :: (x -> y) -> (y -> (w, z)) -> x -> w
--munge = ???

xy :: X -> Y
xy = undefined

ywz :: Y -> (W, Z)
ywz = undefined

munge :: (X -> Y) -> (Y -> (W, Z)) -> X -> W
munge _ ywz  x = fst $ ywz $ xy x


