groupConsecutive :: (Eq a, Enum a) => [a] -> [[a]]
groupConsecutive xs = reverse (iterator [] (xs))
  where
    iterator acc [] = acc
    iterator [] (x : xs) = iterator [[x]] xs
    iterator (currSubList : rest) (x : xs)
      | x == succ (head currSubList) = iterator ((x : currSubList) : rest) xs
      | otherwise = iterator ([x] : currSubList : rest) xs