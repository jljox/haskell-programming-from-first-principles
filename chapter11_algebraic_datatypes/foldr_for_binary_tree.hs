module BinaryTree where

data BinaryTree a =
    Leaf
  | Node (BinaryTree a) a (BinaryTree a)
  deriving (Eq, Ord, Show)

preorder :: BinaryTree a -> [a]
preorder Leaf = []
preorder (Node left v right) = (v : preorder left) ++ preorder right

foldTree :: (a -> b -> b) -> b -> BinaryTree a -> b
foldTree f z bt = foldr f z $ preorder bt

testTree :: BinaryTree Integer
testTree = Node (Node Leaf 1 Leaf) 2 (Node Leaf 3 Leaf)

{-
λ> foldTree (+) 0 testTree
6
-}
