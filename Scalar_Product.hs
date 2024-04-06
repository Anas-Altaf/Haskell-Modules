scalarProduct :: Num a => [a] -> [a] -> a
scalarProduct _ [] = 0
scalarProduct [] _ = 0
scalarProduct xs ys = sum [x * y | (x,y)<-zip xs ys]