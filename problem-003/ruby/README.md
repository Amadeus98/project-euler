# Problem 3 Using Ruby 

Prime factorization can be accomplished using the 
[Prime](http://ruby-doc.org/stdlib-2.0.0/libdoc/prime/rdoc/Prime.html) class: 

````ruby
require 'Prime'
puts Prime.prime_division(600851475143)
````
    
However, `prime_division` returns the solution in the form 
`[[p_1, e_1], [p_2, e_2], ...., [p_n, e_n]]` where `p_n` is the prime factor raised 
to the `e_n` power. 

In order to find the larger prime number, we can use the 
[Enumerable](http://ruby-doc.org/core-2.2.0/Enumerable.html) `max` method: 

````ruby
puts Prime.prime_division(600851475143).max
````
    
However, this still puts results in a `[[p_n, e_n]]` solution. We can use `max` again 
to return the largest prime factor alone: 

````ruby
puts Prime.prime_division(600851475143).max.max
````
   
We can make the solution more versatile by adding command line arguments: 

````ruby
require 'Prime'

def problem3(args)
  puts Prime.prime_division(args[0].to_i).max.max 
end 

problem3(ARGV)
````
    
This allows us to find the solution by running: 

````shell
ruby problem3.rb 600851475143
````
