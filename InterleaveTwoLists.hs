interleave :: [a] -> [b] -> [(a, b)]
interleave [] [] = []
interleave (x:xs) (y:ys) = (x, y) : interleave xs ys
