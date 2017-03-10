module MyFoldr where

myFoldr :: (t -> t1 -> t1) -> t1 -> [t] -> t1
myFoldr _ z []      = z
myFoldr f z (x:xs)  = f x (myFoldr f z xs)
-- λ> myFoldr (+) 0 [1,1]

myFoldr' f z xs =
  case xs of
    []      -> z
    (x:xs)  -> f x (myFoldr' f z xs)
-- λ> myFoldr' (+) 0 [1,1]
