# Problem 1 Using Haskell 

Haskell is an awesomely powerful language. Problem 1 can be solved in one line using 
higher order functions: 

````haskell
foldr (+) 0 [x | x <- [0..999], x `mod` 3 == 0 || x `mod` 5 == 0]
````

`foldr` takes three parameters - a function, an initial value, and a list. The list 
is created using list comprehensions (a very powerful tool in Haskell), and the 
function, in this case, is addition. `foldr` sums the entire list and adds it to the 
initial value of 0. 

In order to make the solution more vesatile, we create a function called `sumMultiples` 
that takes the maximum list size as a parameter. Therefore `sumMultiples 999` returns 
the correct answer. 
