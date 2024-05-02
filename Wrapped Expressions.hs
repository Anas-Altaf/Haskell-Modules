class Functor2 f where 
  fmap :: (a -> b) -> f a -> f b

data Maybe2 a where
  Just2 :: a -> Maybe2 a
  Nothing2 :: Maybe2 a
  deriving (Show)

instance Functor2 Maybe2 where
  fmap func Nothing2 = Nothing2
  fmap func (Just2 a) = Just2 (func a)
