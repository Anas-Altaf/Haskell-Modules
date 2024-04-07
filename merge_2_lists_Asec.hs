merge :: (Ord a) => [a] -> [a] -> [a]
-- Base Cases
merge [] [] = []
merge [] ys = ys
merge xs [] = xs
-- Actual defination
merge (x : xs) (y : ys)
  | x < y = x : merge xs (y : ys)
  | otherwise = y : merge (x : xs) ys
main :: IO ()
main = do
-- Test cases
  let result = merge [1, 3, 4] [2, 6, 7]
  print result -- [1,2,3,4,6,7]
