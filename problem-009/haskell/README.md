# Problem 9 using Haskell 

The problem can be solved using lists comprehensions: 

````haskell
[(a*b*c) | c <- [1..500], b <- [1..c], a <- [1..b], a^2 + b^2 == c^2, a+b+c == 1000]
````
    
The above line iterates through each permutation of `a`, `b`, and `c` 
which satisfy the conditions of the Pythagorean triple and the second 
condition of their sum equalling 1000. In order to satisfy the condition 
of `a < b < c`, we pull `a` from the list of `[1..b]`, b from the list 
of `[1..c]`, and c from the list of `[1..500]`. Ideally, we would pull 
list from an infinite list, `[1..]`, but this would severely increase 
our computation time. 
 
We can decrease the required computation time by decreasing the number 
of variables being compared. Using 
[Euclid's formula](http://en.wikipedia.org/wiki/Formulas_for_generating_Pythagorean_triples#Euclid.27s.2C_Pythagoras.27.2C_and_Plato.27s_formulas) 
for Pythagorean triples, we can reduce the number of variables from 3 to 2: 

    a = (m^2 - n^2) 
    b = 2mn
    c = (m^2 + n^2) 
    
    a + b + c = 1000 
    => (m^2 - n^2) + 2mn + (m^2 + n^2) = 1000
    => 2m^2 + 2mn = 1000
    => m^2 + mn = 500 
    => m(m+n) = 500 
    
Then, in order to find the product of `a`, `b`, and `c`: 

    product = (m^2 - n^2)(2mn)(m^2 + n^2)
              (m^4 - n^4)(2mn)
    
We can then change the above list comprehension to reflect the new formula: 

````haskell
[(m^4 - n^4)*(2*m*n) | m <- [1..500], n <- [1..m], m*(m+n) == 500]
````
    
Here, it makes sense to cap our `m` list to 500 since the total is 500 and 
`m` would satisfy the equation even with the lowest value of `n`: 

    m*(m+n) == 500 
    500 * (500 + 1) =\= 500 
    
Using a bit of math, our final solution is orders of magnitude faster.  