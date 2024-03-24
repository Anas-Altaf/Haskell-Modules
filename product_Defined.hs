product1 :: Num a => [a] -> a
product1 [] = 1
product1 (x:xs) = x* product1 xs

--Alternative Way
product2 :: Num a => [a] -> a
product2 [] = 1
product2 xs = head xs * product2 (tail xs) 