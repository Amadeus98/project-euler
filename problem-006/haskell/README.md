# Problem 6 using Haskell 

The sum of a list squared can found using the higher order function `foldr` and squaring the result: 

    sumListSquared = (foldr (+) 0 [1..100])^2
    
The sum of a squared list can be found by using the same `foldr` function again: 

    sumSquares = foldr (+) 0 [x*x | x <- [1..100]]
    
The difference between both values can be found by subtracting one from the other: 

    sumSquareDifference = sumListSquared - sumSquares
    
However, we can make the solution a little more versatile by not hard-coding the lists: 

    sumListSquared xs = (foldr (+) 0 xs)^2
    
    sumSquares xs = foldr (+) 0 [x*x | x <- xs]
    
    sumSquareDifference xs = sumListSquared(xs) - sumSquares(xs)
    
The solution can then be obtained by calling the following: 

    sumSquareDifference [1..100]
    
