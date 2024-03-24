-- Normal Way
factorial :: (Num a, Enum a) => a -> a
factorial n = product [1 .. n]

-- Recursive Way
factorial2 :: (Ord t, Num t) => t -> t
factorial2 n | n < 1 = 1 -- Base Case
factorial2 n = n * factorial2 (n - 1)