module Arith3Broken where

{-

module Arith3Broken where
  main :: IO () Main = do
    print1+2
    putStrLn 10
    print (negate -1) print ((+) 0 blah) where blah = negate 1
-}

main :: IO ()
main = do
  print $ 1 + 2
  putStrLn "10"
  print $ negate (-1)
  print ((+) 0 blah)
    where blah = negate 1

{-

λ> :l arith3brokent.hs
[1 of 1] Compiling Arith3Broken     ( arith3brokent.hs, interpreted )
Ok, modules loaded: Arith3Broken.
λ> main
3
10
1
-1

-}
