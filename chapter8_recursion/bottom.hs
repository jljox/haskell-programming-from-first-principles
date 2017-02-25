module Bottom where

f :: Bool -> Int
f True = error "blah"
f False = 0

-- partial function
f' :: Bool -> Int
f' False = 0

-- one way to make f' total (a function that can handle all its input)
f'' :: Bool -> Maybe Int
f'' False = Just 0
f'' _ = Nothing
