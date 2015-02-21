# Problem 7 using Ruby 

Ruby provides a prime number generator via it's [Prime](http://ruby-doc.org/stdlib-2.0.0/libdoc/prime/rdoc/Prime.html) class. We can generate the first `n` number of primes using the `first` method: 

    require 'Prime' 
    
    Prime.first(10001)
    
`first` returns an enumerable which allows us to use `max` method to find the 10001st prime number: 

    Prime.first(10001).max 
    
We can make the solution more versatile by wrapping the above code in a function and using command line arguments: 
 
    def problem7(args)
    
      puts Prime.first(args[0].to_i).max
    
    end
    
    problem7(ARGV)
    
