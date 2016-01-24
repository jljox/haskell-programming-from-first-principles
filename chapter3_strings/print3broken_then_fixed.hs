module Print3Broken where

printSecond :: IO ()
printSecond = do
  putStrLn greeting

main :: IO ()
main = do
  putStrLn greeting
  printSecond

greeting :: String
greeting = "Yarrr"

{-
λ> :r
[1 of 1] Compiling Print3Broken     ( print3broken_then_fixed.hs, interpreted )
Ok, modules loaded: Print3Broken.
λ> main
Yarrr
Yarrr
-}
