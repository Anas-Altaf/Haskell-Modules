merge :: (Ord a) => [a] -> [a] -> [a]
-- Base Cases
merge [] [] = []
merge [] ys = ys
merge xs [] = xs
-- Actual defination
merge (x : xs) (y : ys)
  | x < y = x : merge xs (y : ys)
  | otherwise = y : merge (x : xs) ys

-- Test cases
result1 = merge [1, 3, 4] [2, 6, 7]