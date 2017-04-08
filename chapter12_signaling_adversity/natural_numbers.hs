module NatualNumbers where

data Nat = Zero | Succ Nat
  deriving (Eq, Show)

natToInteger :: Nat -> Integer
natToInteger Zero = 0
natToInteger (Succ nat) = 1 + natToInteger nat

{-
λ> natToInteger Zero
0
λ> natToInteger (Succ Zero)
1
λ> natToInteger (Succ (Succ Zero))
2
-}

integerToNat :: Integer -> Maybe Nat
integerToNat n
  | n < 0     = Nothing
  | otherwise = Just $ mkNat n

mkNat :: Integer -> Nat
mkNat 0 = Zero
mkNat 1 = Succ Zero
mkNat n = Succ (mkNat (n - 1))

{-
λ> integerToNat 0
Just Zero
λ> integerToNat 1
Just (Succ Zero)
λ> integerToNat 2
Just (Succ (Succ Zero))
λ> integerToNat (-1)
Nothing
-}
