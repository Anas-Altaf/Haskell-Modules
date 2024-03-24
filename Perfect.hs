checkPerfect :: Integral a => a -> Bool
checkPerfect n
    | sum(init([x|x<-[1..n],n`mod`x== 0])) == n = True
    | otherwise = False
