module BuildingFunctions where

-- a)
append :: String -> String -> String
append x y = x ++ y

-- b)
charAt :: [Char] -> Int -> Char
charAt x i = x !! i

-- c)
function_c :: String -> Int -> String
function_c x n = drop n x


-- 3.
thirdLetter :: String -> Char
thirdLetter x = x !! 2

-- 4.
letterIndex :: Int -> Char
letterIndex n = "Curry is awsome!" !! n

-- 5. ugly code as per exercies instructions.
rvrs :: String
rvrs = drop 9 x ++ take 3 (drop 5 x) ++ " " ++ take 5 x
  where x = "Curry is awsome"
