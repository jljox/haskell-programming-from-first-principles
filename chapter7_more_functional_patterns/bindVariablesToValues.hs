module BindVariablesToValues where

-- bind function arguments
addOne :: Integer -> Integer
addOne x = x + 1

{-
addOne 1 -- x is bound to 1
addOne 1 = 1 + 1
         = 2

addOne 10 -- is bound to 10
addOne 10 = 10 + 1
          = 11
-}

-- bind with let expressions
bindExp :: Integer -> String
bindExp x = let y = 5 in
                "the integer was: " ++ show x
                ++ " and y was: " ++ show y
