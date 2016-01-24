module Mood where

data Mood = Blah | Woot deriving Show
--   [1]    [2]    [3]

-- 1. What is the type constructor, or name of this type? Mood as in [1]
-- 2. if the function requires a Mood value, what are the values you could possibly use there?
-- Blah, Moot as in [2] and [3]

-- 3. changeMood :: Mood -> Mood

-- 4.
changeMood :: Mood -> Mood
changeMood Blah = Woot
changeMood Woot = Blah

-- 5.
{-

λ> :l mood.hs
[1 of 1] Compiling Mood             ( mood.hs, interpreted )
Ok, modules loaded: Mood.
λ> changeMood Blah
Woot
λ> changeMood Woot
Blah

-}
