--Concatinate list of Lists as one List/Single List
concatinator :: [[a]] -> [a]
concatinator xss = [x|xs<-xss,x<-xs]