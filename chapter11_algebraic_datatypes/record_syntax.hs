module RecordSyntax where

data Person = MkPerson String Int deriving (Eq, Show)

jm = MkPerson "julie" 108
ca = MkPerson "chris" 16

namae :: Person -> String
namae (MkPerson s _) = s

-- record syntax
data Person' = Person' { name :: String
                       , age :: Int }
                       deriving (Eq, Show)
{-
λ> :t name
name :: Person' -> String
-}
