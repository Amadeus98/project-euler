# Problem 2 Using Haskell 

An infinite list of Fibonacci numbers can be generated using the following line of 
Haskell code: 

````haskell
fibs = 0 : 1 : zipWith (+) fibs (tail fibs)
````

We can then create a list of Fibonacci numbers using the built-in `take` method: 

````haskell
take 50 fibs 
````

Since the 50th Fibonacci number (including zero) is `12,586,269,025`, and the problem 
calls for numbers less than 4,000,000, we need not take a larger list. 

Computing the sum of even-valued terms in the list is done using higher order 
functions and list comprehension: 

````haskell
foldr (+) 0 [x | x <- take 50 fibs, x < 4000000, x `mod` 2 == 0]
````
