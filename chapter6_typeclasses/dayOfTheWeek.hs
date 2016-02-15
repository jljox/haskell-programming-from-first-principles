module DaysOfTheWeek where

data DayOfWeek =
  Mon | Tue | Weds | Thu | Fri | Sat | Sun

-- day of the week and numerical day of month
data Date = Date DayOfWeek Int

instance Eq DayOfWeek where
  (==) Mon Mon    = True
  (==) Tue Tue    = True
  (==) Weds Weds = True
  (==) Thu Thu    = True
  (==) Fri Fri    = True
  (==) Sat Sat    = True
  (==) Sun Sun    = True
  (==) _ _       = False

instance Eq Date where
  (==) (Date weekday monthNum)
      (Date weekday' monthNum') =
        weekday == weekday' && monthNum == monthNum'
