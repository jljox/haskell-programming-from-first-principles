module ShowFoldlEvaluation where

-- show how foldl evaluates
showFoldlEvaluation :: [Char]
showFoldlEvaluation = "foldl (+) 0 [1..5] evaluates to: " ++ (foldl (\x y -> concat ["(", x, "+", y, ")"]) "0" $ map show [1..5])

-- show how foldl evaluates a "list of a's" given a function f
showFoldlEvaluation' :: Show a => [a] -> [Char]
showFoldlEvaluation' xs = "foldl f z " ++ show xs ++ " evaluates to: " ++ (foldl (\x y -> concat ["(", x, " f ", y, ")"]) "z" $ map show xs)
{-
λ> :l showFoldlEvaluation.hs
[1 of 1] Compiling ShowFoldlEvaluation ( showFoldlEvaluation.hs, interpreted )
Ok, modules loaded: ShowFoldlEvaluation.
λ> showFoldlEvaluation
"(((((0+1)+2)+3)+4)+5)"

-}

-- show how foldl evaluates a "list of a's" given a function f
type F = String
type Z = String
showFoldlEvaluation'' :: Show a => F -> Z -> [a] -> String
showFoldlEvaluation'' f z xs = "foldl "++f++" "++z++" " ++ show xs ++ " evaluates to: " ++ (foldl (\x y -> concat ["(", x, " "++f++" ", y, ")"]) z $ map show xs)
