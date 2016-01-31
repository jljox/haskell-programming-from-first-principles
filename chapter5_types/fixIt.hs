module Sing where

-- module sing where

-- fstString :: [Char] ++ [Char]
-- fstString x = x ++ " in the rain"
fstString :: String -> String
fstString x = x ++ " in the rain"

-- sndString :: [Char] -> Char
-- sndString x = x ++ " over the rainbow"
sndString :: [Char] -> [Char]
sndString x = x ++ " over the rainbow"

-- sing = if (x > y) then fstString x or sndString y
-- where x = "Singin"
--      x = "Somewhere"
sing :: String
sing = if (x > y) then fstString x else sndString y
  where x = "Singin"
        y = "Somewhere"

sing' :: String
sing' = if (x < y) then fstString x else sndString y
  where x = "Singin"
        y = "Somewhere"
