scalarProduct :: Num a => [a] -> [a] -> a
-- Base Cases
scalarProduct _ [] = 0
scalarProduct [] _ = 0
-- Actual 
scalarProduct xs ys = sum [x * y | (x,y)<-zip xs ys]
main :: IO ()
main = do

  let l1 = [1,2,3]
  let l2 = [4,5,6]
  let result = scalarProduct l1 l2
  print result -- 32
