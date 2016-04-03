module GreetIfCool where

greetIfCool :: [Char] -> IO ()
greetIfCool coolness =
  case cool of
    True  -> putStrLn "cool"
    False -> putStrLn "not cool"
  where cool = coolness == "cool dude"
