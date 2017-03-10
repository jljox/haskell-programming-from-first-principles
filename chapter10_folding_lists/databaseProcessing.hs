module DatabaseProcessing where

import Data.Time

data DatabaseItem = DbString String | DbNumber Integer | DbDate UTCTime
  deriving (Eq, Ord, Show)

theDatabase =
  [ DbDate (UTCTime (fromGregorian 1911 5 1) (secondsToDiffTime 34123))
  , DbNumber 9001
  , DbNumber 8001
  , DbString "Hello, world!"
  , DbDate (UTCTime (fromGregorian 1921 5 1) (secondsToDiffTime 34123))
  ]

-- function that filters for DbDate values and returns a list of
-- UTCTime values inside them
filterDbDate :: [DatabaseItem] -> [UTCTime]
filterDbDate xs = foldr (\a acc -> acc ++ keepDbDate a) [] xs

keepDbDate :: DatabaseItem -> [UTCTime]
keepDbDate (DbDate u)   = [u]
keepDbDate _            = []

{-
λ> filterDbDate theDatabase
[1921-05-01 09:28:43 UTC,1911-05-01 09:28:43 UTC]
-}

-- function that filters for DbNumber values and returns al list of
-- the Integer values inside them.
filterDbNumber :: Foldable t => t DatabaseItem -> [Integer]
filterDbNumber xs = foldr (\a acc -> acc ++ keepDbNumber a) [] xs

keepDbNumber (DbNumber n)   = [n]
keepDbNumber _              = []

-- function that gets he most recent date. TODO need to sort
mostRecent :: [DatabaseItem] -> UTCTime
mostRecent xs = head $ filterDbDate xs

-- function that sums all of the DbNumber values
sumDb :: [DatabaseItem] -> Integer
sumDb xs = foldr (+) 0 $ filterDbNumber xs

-- function that gets the average of the DbNumber values
avgDb :: [DatabaseItem] -> Double
avgDb xs = fromIntegral $ sumDb xs `div` (foldr (\_ acc -> acc + 1) 0 $ filterDbNumber xs)
