-- pairMaker xs = [(a,b)|a<-xs, b<-head (tail xs)] --Not Working
pairMaker :: [a] -> [(a, a)]
pairMaker xs = zip xs (tail xs)

zipper :: [a] -> [b] -> [(a, b)]
zipper xs ys = zip xs ys