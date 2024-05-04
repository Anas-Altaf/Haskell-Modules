class Functor2 f where
  fmap2 :: (a -> b) -> f a -> f b

data Maybe2 a = Just2 a | Nothing2 deriving (Show)

instance Functor2 Maybe2 where
  fmap2 f Nothing2 = Nothing2
  fmap2 f (Just2 a) = Just2 (f a)

-- Example
-- ghci> fmap2 (+3) (Just2 12)
-- Just2 15

-- what if we want to work on pure Maybe2 data
-- Like we wanna add (Just2 3 + Just2 4) //Error
-- Lets use applicative Functor , that will work
-- ⚠ To use Applicative Functor for these types, there must me Functor defined
class Functor2 f => Applicative2 f where
  pure :: a -> f a
  (<*>) :: f (a -> b) -> f a -> f b

instance Applicative2 Maybe2 where
  pure = Just2
  Just2 f <*> j = fmap2 f j
  Nothing2 <*> j = Nothing2
