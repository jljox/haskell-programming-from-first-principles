module FoldRWorksOnInfinteLists where

myAny :: Foldable t => (t1 -> Bool) -> t t1 -> Bool
myAny f xs = foldr (\x b -> f x || b) False xs

{-
λ> myAny even [1..]
True

λ> myAny even $ take 10 $ repeat 1
False

λ> myAny odd $ repeat 1
True

The following will never termiate
λ> myAny even $ repeat 1
^CInterrupted.

-}
