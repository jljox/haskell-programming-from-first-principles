module ReturnLast where

returnLast :: t -> t1 -> t2 -> t3 -> t3
returnLast _ _ _ d = d

returnLast' :: a -> (b -> (c -> (d -> d)))
returnLast' _ _ _ d = d

{-
returnBroke :: (((t -> t1) -> t2) -> t3) -> t3

returnLast.hs:10:1:
    Couldn't match expected type ‘t0 -> t1 -> t2 -> t2’
            with actual type ‘t5’
    ‘t5’ is a rigid type variable bound by
     the type signature for
    returnBroke :: (((t -> t3) -> t4) -> t5) -> t5
   at returnLast.hs:9:16
   Relevant bindings include
   returnBroke :: (((t -> t3) -> t4) -> t5) -> t5
   (bound at returnLast.hs:10:1)
       The equation(s) for ‘returnBroke’ have four arguments,
           but its type ‘(((t -> t3) -> t4) -> t5) -> t5’ has only one
           Failed, modules loaded: none.
-}
returnBroke _ _ _ d = d

