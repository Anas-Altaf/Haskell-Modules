import Distribution.Simple.Setup (trueArg)
factors :: Integral a => a -> [a]
factors n |n<1 = []
factors n = init([x|x<-[1..n],n`mod`x== 0])