module BinaryTree where

data BinaryTree a =
    Leaf
  | Node (BinaryTree a) a (BinaryTree a)
  deriving (Eq, Ord, Show)

insert :: Ord a => a -> BinaryTree a -> BinaryTree a
insert b Leaf = Node Leaf b Leaf
insert b (Node left a right)
  | b == a = Node left a right
  | b < a = Node (insert b left) a right
  | b > a = Node left a (insert b right)

{-
λ> let t1 = insert 0 Leaf
λ> t1
Node Leaf 0 Leaf

λ> let t2 = insert 3 t1
λ> t2
Node Leaf 0 (Node Leaf 3 Leaf)

λ> let t3 = insert 5 t2
λ> t3
Node Leaf 0 (Node Leaf 3 (Node Leaf 5 Leaf))
-}


mapTree :: (a -> b) -> BinaryTree a -> BinaryTree b
mapTree _ Leaf = Leaf
mapTree f (Node left a right) = Node (mapTree f left) (f a) (mapTree f right)

testTree' :: BinaryTree Integer
testTree' = Node (Node Leaf 3 Leaf) 1 (Node Leaf 4 Leaf)

mapExpected = Node (Node Leaf 4 Leaf) 2 (Node Leaf 5 Leaf)

-- acceptance test for mapTree
mapOkay =
  if mapTree (+1) testTree' == mapExpected then print "yup okay!"
  else error "test failed!"
