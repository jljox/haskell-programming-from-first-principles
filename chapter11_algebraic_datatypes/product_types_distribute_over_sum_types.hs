module ProductTypesDistributeOverSumTypes where

-- types with single, nullary inhabitants
data FictionType = MkFiction
  deriving Show
data NonFictionType = MkNonFiction
  deriving Show

-- sum type
data BookType = FictionBook FictionType
              | NonFictionBook NonFictionType
              deriving Show

-- type synonym
type AuthorName = String

-- product type
data AuthorType = MkAuthor (AuthorName, BookType)

data Author =
    Fiction AuthorName
  | NonFiction AuthorName
  deriving (Eq, Show)
