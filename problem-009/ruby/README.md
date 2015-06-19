# Problem 9 using Ruby 

We can reduce the computation time required to find the solution by 
rewriting the Pythagorean triplet using [Euclid's formula](http://en.wikipedia.org/wiki/Formulas_for_generating_Pythagorean_triples#Euclid.27s.2C_Pythagoras.27.2C_and_Plato.27s_formulas): 

    a = (m^2 - n^2) 
    b = 2mn
    c = (m^2 + n^2) 
    
    a + b + c = 1000 
    => (m^2 - n^2) + 2mn + (m^2 + n^2) = 1000
    => 2m^2 + 2mn = 1000
    => m^2 + mn = 500 
    => m(m+n) = 500 
    
We can then iterate through each variable to find `m` and `n` that 
satisfy the simplified equation: 

````ruby
(1..500).each do |m|
  (1..m).each do |n|
    if m*(m+n) == 500
      puts (m**4 - n**4)*(2*m*n)
    end
  end
end
````
    
Since we only want positive answers, we need only iterate up to `m` 
for `n`. We can then wrap the iteration in a function and call it 
with the following: 

````ruby
def problem9
  (1..500).each do |m| 
    ...
  end 
end 

problem9
````

````shell
$> ruby problem9.rb 
````
