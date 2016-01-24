module Print3Broken where

printSecond :: IO ()
printSecond = do
  putStrLn greeting

main :: IO ()
main = do
  putStrLn greeting
  printSecond
    where greeting = "This will not compile because greeting is a local function"

{-
λ> :l print3broken.hs
[1 of 1] Compiling Print3Broken     ( print3broken.hs, interpreted )

print3broken.hs:5:12: Not in scope: ‘greeting’
Failed, modules loaded: none.
-}
