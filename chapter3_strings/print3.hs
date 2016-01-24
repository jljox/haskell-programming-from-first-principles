module Print3 where

myGreetting :: String
myGreetting = "Hello" ++ " world!"

hello :: String
hello = "Hello"

world :: String
world = "world!"

main :: IO ()
main = do
  putStrLn myGreetting
  putStrLn secondGreeting
    where secondGreeting = concat [hello, " ", world]

