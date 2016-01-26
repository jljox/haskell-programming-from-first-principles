module GreetIfCool2 where

greetIfCool :: String -> IO ()
greetIfCool coolness =
  if cool coolness
     then putStrLn "cool"
     else
     putStrLn "not cool"
     where cool v = v == "downright frosty"
