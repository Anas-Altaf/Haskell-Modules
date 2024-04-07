-- Using Previous Merge Function (Q-2) of Assignment as Helper
merge :: (Ord a) => [a] -> [a] -> [a]
-- Base Cases
merge [] [] = []
merge [] ys = ys
merge xs [] = xs
-- Actual defination
merge (x : xs) (y : ys)
  | x < y = x : merge xs (y : ys)
  | otherwise = y : merge (x : xs) ys

-- Divides list into two halves by determinig length
halves :: [a] -> ([a], [a])
halves [] = ([], [])
halves xs = (take leftHalf xs, drop leftHalf xs) -- We can use built-in function [splitAt leftHalfx xs]
  where
    leftHalf = div ((length xs) + 1) 2 -- Finding Half Length

-- Actual recursive halving , merging sorted
msort :: (Ord a) => [a] -> [a]
-- Base Cases
msort [] = []
msort [x] = [x]
msort xs = merge (msort leftHalfList) (msort rightHalfList)
  where
    (leftHalfList, rightHalfList) = halves xs
    
main :: IO ()
main = do
  -- Testing
  let result = msort [1,3,2,5,4,7,6,9,8]
  print result -- [1,2,3,4,5,6,7,8,9]
  
  
