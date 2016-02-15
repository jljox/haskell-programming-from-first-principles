module Trivial where

-- keep the typeclass instances of a type
-- in the same file as that type

data Trivial = Trivial'

instance Eq Trivial where
  Trivial' == Trivial' = True
