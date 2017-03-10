module ShowFoldrEvaluation where

-- show how foldr evaluates
showFoldrEvaluation :: [Char]
showFoldrEvaluation = foldr (\x y -> concat ["(", x, "+", y, ")"]) "0" $ map show [1..5]

-- show how foldr evaluates a "list of a's" given a function f
showFoldrEvaluation' :: Show a => [a] -> [Char]
showFoldrEvaluation' xs = foldr (\x y -> concat ["(", x, " f ", y, ")"]) "z" $ map show xs
{-
  λ> showFoldrEvaluation' $ 1 : 2 : []
"(1 f (2 f z))"
-}
