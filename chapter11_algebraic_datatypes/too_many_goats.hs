module TooManyGoats where

newtype Goats = Goats Int deriving (Eq, Show)
newtype Cows = Cows Int deriving (Eq, Show)

tooManyGoats :: Goats -> Bool
tooManyGoats (Goats n) = n > 42

{-
λ> tooManyGoats $ Goats 1
False
λ> tooManyGoats $ Goats 43
True
λ> tooManyGoats $ Cows  43

<interactive>:50:16: error:
    • Couldn't match expected type ‘Goats’ with actual type ‘Cows’
    • In the second argument of ‘($)’, namely ‘Cows 43’
      In the expression: tooManyGoats $ Cows 43
      In an equation for ‘it’: it = tooManyGoats $ Cows 43
-}
