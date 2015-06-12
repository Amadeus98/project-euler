# Problem 5 Using Ruby 

Ruby has a built-in [lowest common multiple](http://ruby-doc.org//core-2.2.0/Integer.html#method-i-lcm) method as part of it's `Integer` class, allowing us to find the lowest common multiple of two numbers: 

    $> 15.lcm(20)
     => 60 
     
However, the method does not work with lists, so we need to use the [`reduce` method](http://ruby-doc.org/core-2.1.0/Enumerable.html#method-i-reduce) provided by the `Enumerable` class, which applies an operation to all elements of an enumerable: 

    (1..20).reduce(:lcm) 
    
We can then wrap this in a function and make it a little more versatile with command line arguments: 

    def problem5(args)
    
      puts (args[0].to_i..args[1].to_i).reduce(:lcm)
    
    end
    
    problem5(ARGV)

The solution can then be found by calling: 

    ruby problem5.rb 1 20 
    
