primeChecker :: Integral a => a -> Bool
primeChecker n
    | ([x|x<-[1..n],n`mod`x== 0]) == [1,n] = True --If Factors are only 1 and n
    |otherwise = False


-- you can find list of primes till a number
listprime :: Integral a => a -> [a]
listprime n = [x|x<-[2..n], primeChecker x]