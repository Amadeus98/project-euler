# Problem 3 Using Haskell 

Haskell provides an excellent solution to prime factorization through it's [Wiki page](http://www.haskell.org/haskellwiki/99_questions/Solutions/35), summarized in the following lines:  

    factor :: Integer -> [Integer]
    factor 1 = []
    factor n = let prime = head $ dropWhile ((/= 0) . mod n) [2..n]
               in (prime :) $ factor $ div n prime 


