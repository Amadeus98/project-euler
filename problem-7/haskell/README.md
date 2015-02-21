# Problem 7 using Haskell 

Finding the `n`th prime is rather difficult because there exists no formula for calculating it. However, Haskell does provide a few [one-liners](https://wiki.haskell.org/Prime_numbers_miscellaneous#One-liners) for finding primes indefinitely. After some trial and error, the following one-liner was among the quickest at iterating over primes: 
 
    primes = 2 : [n | n<-[3,5..], all ((> 0).rem n) [3,5..floor.sqrt$fromIntegral n]]
    
We can then combine the `maximum` and `take` functions to provide the 10001st prime: 

    maximum (take 10001 primes) 
    
We can wrap the solution in a function to make it a bit more versatile: 

    nthPrime n = maximum (take n primes) 
    
The solution can then be found by running: 

    nthPrime 10001
    
