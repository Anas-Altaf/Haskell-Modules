-- Custom Types
-- Use of Data in Shapes
data Shape = Circle Float | Rect Float Float deriving (Show)

square :: Float -> Shape
square n = Rect n n

area :: Shape -> Float
area (Circle r) = r * r * pi
area (Rect m n) = m * n

--Other Sample
data Safeval a = KuchNhi | Sirf a deriving (Show )

safediv :: Int -> Int -> Safeval Int 
safediv _ 0 = KuchNhi
safediv m n = Sirf (m `div` n)
