# Problem 3 Using Haskell 

Haskell provides an excellent solution to prime factorization through it's [Wiki page](http://www.haskell.org/haskellwiki/99_questions/Solutions/35), summarized in the following lines:  

    factor :: Integer -> [Integer]
    factor 1 = []
    factor n = let prime = head $ dropWhile ((/= 0) . mod n) [2..n]
               in (prime :) $ factor $ div n prime 

Calling `factor 600851475143` returns a list containing all the prime numbers of `600851475143`. In order to obtain the largest factor, we can use the built-in `maximum` function, which returns the largest the biggest element of a list that can be ordered. We can then write a new function to find the largest factor: 

    largestPrimeFactor n = maximum x 
      where 
        x = factor n 
        
Now we can find the largest factor of `600851475143` through the following: 

    largestPrimeFactor 600851475143 
    
