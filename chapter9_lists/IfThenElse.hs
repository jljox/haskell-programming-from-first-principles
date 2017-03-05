module IfThenElse where


{-|
6. Back in the Functions chapter, you wrote a function called foldBool. That function exists in a module known as Data.Bool and is called bool. Write a function that does the same (or similar, if you wish) as the map (if-then-else) function you saw above but uses bool instead of the if-then-else syntax.

Prelude> map (\x -> if x == 3 then (-x) else (x)) [1..10]
[1,2,-3,4,5,6,7,8,9,10]

-}

{-|
λ> map (\x -> bool x (-x) (x==3)) [1..10]
[1,2,-3,4,5,6,7,8,9,10]
-}
