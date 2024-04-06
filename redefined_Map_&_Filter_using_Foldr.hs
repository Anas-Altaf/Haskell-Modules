-- To Apply Function when foldr is working
applyFunction1 f x xs = f x : xs

map' :: (a -> b) -> [a] -> [b]
map' f = foldr (applyFunction1 f) []

-- To Apply Function when foldr is working
applyFunction2 p x xs 
    |p x =  x : xs
    |otherwise =  xs

filter' :: (a -> Bool) -> [a] -> [a]
filter' p = foldr (applyFunction2 p) []

-- When Applying Function :
-- We can also use lambda functions within the map ad filter defination in place of applyFunction
-- lists like xs can also be added in function defination
