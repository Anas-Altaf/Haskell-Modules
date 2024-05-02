data Nat = Zero | Succ Nat deriving (Show)

nat2int :: Nat -> Int
nat2int Zero = 0
nat2int (Succ x) = 1 + nat2int x

add :: Nat -> Nat -> Nat
add Zero x = x
add (Succ n) y = add n (Succ y)