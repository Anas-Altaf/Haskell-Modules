sortedAsec :: Ord a => [a] -> Bool
sortedAsec xs = and ([x<=y|(x,y)<-zip xs (tail xs)])

sortedDsec :: Ord a => [a] -> Bool
sortedDsec xs = and ([x>=y|(x,y)<-zip xs (tail xs)])