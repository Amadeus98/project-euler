# Problem 6 using Ruby 

The sum of the squares, and square of the sum, of a list can be 
found by iterating over a list: 

````ruby
sum = 0
sumSquared = 0

(1..100).each do |n|
  sum += n
  sumSquared += n*n
end

puts (sum*sum - sumSquared)
````
      
The solution can be made a little more versatile by wrapping it in a 
function and using command line arguments: 

````ruby
def problem6(args)
  sum = 0
  sumSquared = 0

  (1..args[0].to_i).each do |n|
    sum += n
    sumSquared += n*n
  end

  puts (sum*sum - sumSquared)
end

problem6(ARGV)
````