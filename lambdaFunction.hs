import Data.Char (GeneralCategory)
odds :: (Num b, Enum b) => b -> [b]
odds n=map f [1..n]
    where
        f x = x*2+1

--Using Set Builder Notation
oddPrint :: Integral a => a -> [a]
oddPrint n= [x|x<-[0..n],x`mod`2/=0]

test1 :: [Integer]
test1 = [x*x|x<-[1..5]]

test2 :: [(Integer, Integer)]
test2 = [(x,y)|x<-[1..3],y<-[1..2]]

test3 :: [(Integer, Integer)]
test3 = [(y,x)|x<-[1..3],y<-[1..2]]

test4 :: [(Integer, Integer)]
test4 = [(x,y)|y<-[6,7],x<-[1,2]] 

-- Dependent Generator
test5 :: [(Integer, Integer)]
test5 = [(x,y)|x<-[1..4],y<-[x..4]] 