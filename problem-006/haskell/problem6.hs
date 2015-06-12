
sumListSquared xs = (foldr (+) 0 xs)^2

sumSquares xs = foldr (+) 0 [x*x | x <- xs]

sumSquareDifference xs = sumListSquared(xs) - sumSquares(xs)