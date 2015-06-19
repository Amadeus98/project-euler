# Problem 10 using Ruby

The first `n` prime numbers can be found using the 
[Prime](http://ruby-doc.org/stdlib-2.0.0/libdoc/prime/rdoc/Prime.html) class:

````ruby
require 'Prime'

Prime.take_while { |p| p < 10 } 
````

Since `Prime` is an enumerable, the `take_while` method returns an array of the 
first `n` prime numbers. In order to sum all of the values of the array, we can 
use the `inject` method: 

````ruby 
(Prime.take_while { |p| p < 10 }).inject(:+)
````

We can make the solution more versatile by adding command line arguments: 

````ruby
require 'Prime'

def problem10(args)
  puts (Prime.take_while { |p| p < (args[0].to_i) }).inject(:+)
end

problem10(ARGV)
````
This allows us to find the solution by running: 

````shell
ruby problem10.rb 2000000
````