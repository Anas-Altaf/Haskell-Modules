removeDuplicates :: (Eq a) => [a] -> [a]
removeDuplicates [] = []
-- ==> Simple Way
-- removeDuplicates (x : xs) = x: removeDuplicates (filter(/=x) xs)

-- ==> Alternative Way
removeDuplicates (x : xs) = x : removeDuplicates (removeAll x xs)
  where
    -- Defining RemoveAll to Remove all Duplicates
    removeAll _ [] = [] -- Handling Empty List if any
    removeAll y (z : zs)
      | y == z = removeAll y zs -- Will Ignore head z of list xs if equals to the previous selected element y
      | otherwise = z : removeAll y zs -- Otherwise it will concatinate z and will continue recursion