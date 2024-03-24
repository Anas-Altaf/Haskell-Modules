position :: (Num a1, Enum a1, Eq a2) => a2 -> [a2] -> a1
position n xs = head ([i|(i,x)<-zip [0..] xs, x==n])

-- Not Efficient way
-- countOccurence :: Eq a => a -> [a] -> Int
-- countOccurence n xs =  length [x | x<-([x==n|(i,x)<-zip [0..] xs]) , x]

--Better Way
countOccurence :: Eq a => a -> [a] -> Int
countOccurence n xs =  length [x | x<-xs, x==n]