zip1 _ [] = []
zip1 [] _ = []
zip1 (x : xs) (y : ys) = (x, y) : zip1 xs ys

-- Will Work Till the Length of Both Lists is Equal