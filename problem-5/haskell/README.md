# Problem 5 using Haskell 

Finding a number that is evenly divisible by a set is the same as finding the lowest common multiple of that same set. Therefore, we can use the built-in method `lcm` to find the least common multiple of two numbers: 

    $> lcm 15 20 
    $> 60 
    
However, `lcm` only works with integers, not lists. Therefore we need to use `foldl` which takes an operator, a starting point, and a list, and applies the operator recursively to the list from left to right [source](http://hackage.haskell.org/package/base-4.7.0.2/docs/Prelude.html#v:foldl). This allows us to find the least common multiple of a list: 
 
    foldl lcm 1 [1..20]
    
We can make the solution a little more versatile by wrapping it in a function: 

    findSmallestMultiple xs = foldl lcm 1 xs 
    
Which allows us to find the solution by running: 

    findSmallestMultiple [1..20]
    
