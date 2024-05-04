class Functor2 f where
  fmap2 :: (a -> b) -> f a -> f b

-- Lets do this for a tree Data
data Tree a = Leaf a | Branch (Tree a) (Tree a) deriving (Show)

-- we will just create instance of Functor2
instance Functor2 Tree where
  fmap2 f (Leaf a) = Leaf (f a)
  fmap2 f (Branch left right) = Branch (fmap2 f left) (fmap2 f right)

-- what if we want to work on pure Maybe2 data
-- Like we wanna add (Just2 3 + Just2 4) //Error
-- Lets use applicative Functor , that will work
-- ⚠ To use Applicative Functor for these types, there must me Functor defined
class (Functor2 f) => Applicative2 f where
  pure :: a -> f a
  (<*>) :: f (a -> b) -> f a -> f b

instance Applicative2 Tree where
  pure = Leaf
  Leaf f <*> t = fmap2 f t
  Branch a b <*> j = Branch (fmap f a) (fmap f b)