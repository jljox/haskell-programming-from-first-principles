module BinaryTree where

data BinaryTree a =
    Leaf
  | Node (BinaryTree a) a (BinaryTree a)
  deriving (Eq, Ord, Show)

-- Question 1 unfold for binary tree
unfold :: (a -> Maybe (a, b, a)) -> a -> BinaryTree b
unfold f seed = (go $ f seed) where
  go Nothing              = Leaf
  go (Just (al , b, ar))  = Node (go $ f al) b (go $ f ar)

-- Question 2 make a tree builder
treeBuild :: Integer -> BinaryTree Integer
treeBuild n = unfold f n where
  f n = case n <= 0 of
          True  -> Nothing
          False -> Just (n - 1, n, n - 1)

{-
Not quite the same function as in the book. Will fix later
[1 of 1] Compiling BinaryTree       ( binary_tree.hs, interpreted )
Ok, modules loaded: BinaryTree.
λ> treeBuild 0
Leaf
λ> treeBuild 1
Node Leaf 1 Leaf
λ> treeBuild 2
Node (Node Leaf 1 Leaf) 2 (Node Leaf 1 Leaf)
-}
