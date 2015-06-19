# Problem 2 Using Ruby 

A Fibonacci number can be found using this clever one-line solution from a 
[Stack OverFlow answer](http://stackoverflow.com/questions/6418524/fibonacci-one-liner): 

````ruby
fibonacci = Hash.new{ |h,k| h[k] = k < 2 ? k : h[k-1] + h[k-2] }
````
    
We can then use a while loop to scan each Fibonacci number to see if its value 
is less than 4,000,000, and add it to a sum if it's even: 

````ruby
n = 1 
sum = 0 

while fibonacci[n] < 4000000
  if fibonacci[n] % 2 == 0
    sum += fibonacci[n]
  end 
  n += 1
end
````
    
We can make the solution more versatile by adding command line arguments to 
the conditional of the while loop:  

````ruby
def problem2(args)
  ...
  while fibonacci[n] < args[0].to_i 
    ... 
  end
end

problem2(ARGV)
````
   
Which then allows us to find the solution by running: 

````shell
ruby problem2.rb 4000000
````
