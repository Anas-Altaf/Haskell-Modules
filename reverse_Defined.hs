reverse1 :: [a] -> [a]
reverse1 [] = []
reverse1 (x:xs) = reverse1 xs++[x]

--Alternative Way
reverse2 :: [a] -> [a]
reverse2 [] = []
reverse2 xs = last xs : reverse2(init xs)