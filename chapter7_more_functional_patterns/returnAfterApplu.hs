module ReturnAfterApply where

returnAfterApply :: (a -> b) -> a -> c -> b
returnAfterApply f x y = f x
