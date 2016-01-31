module LocallyDeclaredType where

-- uncommon local declaration of the type
triple x = tripleIt x
  where tripleIt :: Integer -> Integer
        tripleIt y = y * 3
