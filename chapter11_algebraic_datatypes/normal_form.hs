module NormalForm where

-- sum type
data FlowerType = Gardenia
                | Daisy
                | Rose
                | Lilac
                deriving Show

-- type alias
type Gardener = String

-- product type
data Garden =
  Garden Gardener FlowerType
--  [1]    [2]       [3]
--  1: value constructor
--  2: type alias for [Char] which is a product type with an infinite number of inhabitants
--  3: sum-type type-constructor
  deriving Show

-- normal form of Garden
-- product types distribute over sum types
-- a * (b + c) is the same as (a * b) + (a * c)
--
-- being in normal form means: the type is a sum-type of product-types
data GardenTypeInNormalForm = MkGardenValueInNormalForm [(Gardener, FlowerType)]
  deriving Show

-- given that list has an infinite number of inhabitants (including []), here is a
-- sample
{-
λ> :l normal_form.hs
[1 of 1] Compiling NormalForm       ( normal_form.hs, interpreted )
Ok, modules loaded: NormalForm.
λ> let gardens = MkGardenValueInNormalForm [(g, f) | g <- ["bob", "daisy"], f <- [Gardenia, Daisy, Rose, Lilac]]
λ> gardens
MkGardenValueInNormalForm [("bob",Gardenia),("bob",Daisy),("bob",Rose),("bob",Lilac),("daisy",Gardenia),("daisy",Daisy),("daisy",Rose),("daisy",Lilac)]
-}

