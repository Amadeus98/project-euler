# Problem 10 using Haskell

Haskell provides an excellent solutino to prime factorization through it's 
[Wiki page](https://wiki.haskell.org/Prime_numbers#Calculating_Primes_Upto_a_Given_Value), 
summarized in the following lines:

    {-# OPTIONS_GHC -O2 #-}
    import Data.Array.Unboxed
    
    primesToNA n = 2: [i | i <- [3,5..n], ar ! i]
      where
        ar = f 5 $ accumArray (\ a b -> False) True (3,n)
                            [(i,()) | i <- [9,15..n]]
        f p a | q > n = a
              | True  = if null x then a2 else f (head x) a2
          where q = p*p
                a2  :: UArray Int Bool
                a2 = a // [(i,False) | i <- [q, q+2*p..n]]
                x  = [i | i <- [p+2,p+4..n], a2 ! i]
                
Calling `primesToNA 2000000` returns a lit containing all the prime numbers 
up to `2000000`. In order to obtain the sum of all the prime number, we use
the built in Haskell function `sum`: 

    sumOfPrimes n = sum (primesToNA n)
    
Now we can find the sum of all prime numbers less than `2000000` through the 
following: 

    sumOfPrimes 2000000
    
