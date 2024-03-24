-- Simple Way(Generic) Not Case Sensitive
isPalindrome :: Eq a => [a] -> Bool
isPalindrome xs = xs == reverse xs

-- Alternative Way
-- isPalindrome xs
--     | xs == reverse xs = True
--     |otherwise = False