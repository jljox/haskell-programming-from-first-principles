module GreetIfCool1 where

greetIfCool :: String -> IO ()
greetIfCool coolness =
  if cool
     then putStrLn "cool"
     else
     putStrLn "not cool"
     where cool = coolness == "downright frosty"
